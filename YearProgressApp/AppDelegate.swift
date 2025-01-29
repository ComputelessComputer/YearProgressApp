import Cocoa
import ServiceManagement

@main
final class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusItem: NSStatusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    private var currentMode: ProgressMode = .year
    private var updateTimer: Timer?
    private let launchAtLoginKey = "LaunchAtLogin"
    
    private enum ProgressMode: CaseIterable {
        case year, month, day
        
        var title: String {
            switch self {
            case .year: return "of yyyy"
            case .month: return "of MMM"
            case .day: return "of Today"
            }
        }
        
        mutating func next() {
            let currentIndex = ProgressMode.allCases.firstIndex(of: self)!
            self = ProgressMode.allCases[(currentIndex + 1) % ProgressMode.allCases.count]
        }
    }

    static func main() {
        let app = NSApplication.shared
        let delegate = AppDelegate()
        app.delegate = delegate
        app.run()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApp.setActivationPolicy(.accessory)
        setupStatusItem()
        startTimer()
        updateProgress()
        
        // Don't register as login item by default
        if UserDefaults.standard.bool(forKey: launchAtLoginKey) {
            do {
                try SMAppService.mainApp.register()
            } catch {
                print("Failed to register login item: \(error.localizedDescription)")
            }
        }
    }
    
    private func setupStatusItem() {
        if let button = statusItem.button {
            button.title = "Loading..."
            button.target = self
            button.action = #selector(statusBarButtonClicked(_:))
        }
        
        let menu = NSMenu()
        
        // Add mode selection menu items
        menu.addItem(NSMenuItem(title: "Year Progress", action: #selector(selectYearMode), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Month Progress", action: #selector(selectMonthMode), keyEquivalent: ""))
        menu.addItem(NSMenuItem(title: "Day Progress", action: #selector(selectDayMode), keyEquivalent: ""))
        
        menu.addItem(NSMenuItem.separator())
        
        // Add launch at login toggle
        let launchAtLoginItem = NSMenuItem(title: "Launch at Login", action: #selector(toggleLaunchAtLogin), keyEquivalent: "")
        launchAtLoginItem.state = UserDefaults.standard.bool(forKey: launchAtLoginKey) ? .on : .off
        menu.addItem(launchAtLoginItem)
        
        menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        
        statusItem.menu = menu
    }
    
    @objc private func selectYearMode() {
        currentMode = .year
        updateProgress()
    }
    
    @objc private func selectMonthMode() {
        currentMode = .month
        updateProgress()
    }
    
    @objc private func selectDayMode() {
        currentMode = .day
        updateProgress()
    }
    
    private func startTimer() {
        // Invalidate existing timer if any
        updateTimer?.invalidate()
        
        // Create a new timer that fires every minute
        updateTimer = Timer.scheduledTimer(withTimeInterval: 60.0, repeats: true) { [weak self] _ in
            self?.updateProgress()
        }
        
        // Make sure timer runs even when the menu is being shown
        RunLoop.current.add(updateTimer!, forMode: .common)
    }

    @objc private func statusBarButtonClicked(_ sender: NSStatusBarButton) {
        currentMode.next()
        updateProgress()
    }
    
    private func updateProgress() {
        let calendar = Calendar.current
        let now = Date()
        
        let progress: Double
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        let dateFormatter = DateFormatter()
        
        let displayText: String
        
        switch currentMode {
        case .year:
            let startOfYear = calendar.date(from: calendar.dateComponents([.year], from: now))!
            let endOfYear = calendar.date(byAdding: DateComponents(year: 1), to: startOfYear)!
            progress = Double(calendar.dateComponents([.second], from: startOfYear, to: now).second!) /
                      Double(calendar.dateComponents([.second], from: startOfYear, to: endOfYear).second!) * 100
            
            dateFormatter.dateFormat = "yyyy"
            displayText = "of \(dateFormatter.string(from: now))"
            
        case .month:
            let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: now))!
            let endOfMonth = calendar.date(byAdding: DateComponents(month: 1), to: startOfMonth)!
            progress = Double(calendar.dateComponents([.second], from: startOfMonth, to: now).second!) /
                      Double(calendar.dateComponents([.second], from: startOfMonth, to: endOfMonth).second!) * 100
            
            dateFormatter.dateFormat = "MMM"
            displayText = "of \(dateFormatter.string(from: now))"
            
        case .day:
            let startOfDay = calendar.date(from: calendar.dateComponents([.year, .month, .day], from: now))!
            let endOfDay = calendar.date(byAdding: DateComponents(day: 1), to: startOfDay)!
            progress = Double(calendar.dateComponents([.second], from: startOfDay, to: now).second!) /
                      Double(calendar.dateComponents([.second], from: startOfDay, to: endOfDay).second!) * 100
            
            displayText = "of Today"
        }
        
        if let button = statusItem.button {
            // Round progress to nearest 5% and format image name
            let roundedProgress = Int(round(progress / 5.0) * 5)
            let imageName = String(format: "gauge%02d", roundedProgress)
            
            if let originalImage = NSImage(named: imageName) {
                // Create a new image with the desired size (18x18 for status bar)
                let resizedImage = NSImage(size: NSSize(width: 18, height: 18))
                resizedImage.lockFocus()
                originalImage.size = NSSize(width: 18, height: 18)
                originalImage.draw(in: NSRect(x: 0, y: 0, width: 18, height: 18))
                resizedImage.unlockFocus()
                resizedImage.isTemplate = true  // This allows the image to adapt to system dark/light mode
                
                button.image = resizedImage
                button.imagePosition = .imageLeft
            }
            
            button.title = " \(formatter.string(from: NSNumber(value: progress))!)% \(displayText)"
        }
    }
    
    @objc private func toggleLaunchAtLogin(_ sender: NSMenuItem) {
        do {
            if sender.state == .on {
                try SMAppService.mainApp.unregister()
                sender.state = .off
                UserDefaults.standard.set(false, forKey: launchAtLoginKey)
            } else {
                try SMAppService.mainApp.register()
                sender.state = .on
                UserDefaults.standard.set(true, forKey: launchAtLoginKey)
            }
        } catch {
            print("Failed to toggle launch at login: \(error.localizedDescription)")
        }
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        // Clean up timer when app terminates
        updateTimer?.invalidate()
    }
}
