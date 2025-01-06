import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "gauge00" asset catalog image resource.
    static let gauge00 = DeveloperToolsSupport.ImageResource(name: "gauge00", bundle: resourceBundle)

    /// The "gauge05" asset catalog image resource.
    static let gauge05 = DeveloperToolsSupport.ImageResource(name: "gauge05", bundle: resourceBundle)

    /// The "gauge10" asset catalog image resource.
    static let gauge10 = DeveloperToolsSupport.ImageResource(name: "gauge10", bundle: resourceBundle)

    /// The "gauge100" asset catalog image resource.
    static let gauge100 = DeveloperToolsSupport.ImageResource(name: "gauge100", bundle: resourceBundle)

    /// The "gauge15" asset catalog image resource.
    static let gauge15 = DeveloperToolsSupport.ImageResource(name: "gauge15", bundle: resourceBundle)

    /// The "gauge20" asset catalog image resource.
    static let gauge20 = DeveloperToolsSupport.ImageResource(name: "gauge20", bundle: resourceBundle)

    /// The "gauge25" asset catalog image resource.
    static let gauge25 = DeveloperToolsSupport.ImageResource(name: "gauge25", bundle: resourceBundle)

    /// The "gauge30" asset catalog image resource.
    static let gauge30 = DeveloperToolsSupport.ImageResource(name: "gauge30", bundle: resourceBundle)

    /// The "gauge35" asset catalog image resource.
    static let gauge35 = DeveloperToolsSupport.ImageResource(name: "gauge35", bundle: resourceBundle)

    /// The "gauge40" asset catalog image resource.
    static let gauge40 = DeveloperToolsSupport.ImageResource(name: "gauge40", bundle: resourceBundle)

    /// The "gauge45" asset catalog image resource.
    static let gauge45 = DeveloperToolsSupport.ImageResource(name: "gauge45", bundle: resourceBundle)

    /// The "gauge50" asset catalog image resource.
    static let gauge50 = DeveloperToolsSupport.ImageResource(name: "gauge50", bundle: resourceBundle)

    /// The "gauge55" asset catalog image resource.
    static let gauge55 = DeveloperToolsSupport.ImageResource(name: "gauge55", bundle: resourceBundle)

    /// The "gauge60" asset catalog image resource.
    static let gauge60 = DeveloperToolsSupport.ImageResource(name: "gauge60", bundle: resourceBundle)

    /// The "gauge65" asset catalog image resource.
    static let gauge65 = DeveloperToolsSupport.ImageResource(name: "gauge65", bundle: resourceBundle)

    /// The "gauge70" asset catalog image resource.
    static let gauge70 = DeveloperToolsSupport.ImageResource(name: "gauge70", bundle: resourceBundle)

    /// The "gauge75" asset catalog image resource.
    static let gauge75 = DeveloperToolsSupport.ImageResource(name: "gauge75", bundle: resourceBundle)

    /// The "gauge80" asset catalog image resource.
    static let gauge80 = DeveloperToolsSupport.ImageResource(name: "gauge80", bundle: resourceBundle)

    /// The "gauge85" asset catalog image resource.
    static let gauge85 = DeveloperToolsSupport.ImageResource(name: "gauge85", bundle: resourceBundle)

    /// The "gauge90" asset catalog image resource.
    static let gauge90 = DeveloperToolsSupport.ImageResource(name: "gauge90", bundle: resourceBundle)

    /// The "gauge95" asset catalog image resource.
    static let gauge95 = DeveloperToolsSupport.ImageResource(name: "gauge95", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "gauge00" asset catalog image.
    static var gauge00: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge00)
#else
        .init()
#endif
    }

    /// The "gauge05" asset catalog image.
    static var gauge05: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge05)
#else
        .init()
#endif
    }

    /// The "gauge10" asset catalog image.
    static var gauge10: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge10)
#else
        .init()
#endif
    }

    /// The "gauge100" asset catalog image.
    static var gauge100: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge100)
#else
        .init()
#endif
    }

    /// The "gauge15" asset catalog image.
    static var gauge15: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge15)
#else
        .init()
#endif
    }

    /// The "gauge20" asset catalog image.
    static var gauge20: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge20)
#else
        .init()
#endif
    }

    /// The "gauge25" asset catalog image.
    static var gauge25: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge25)
#else
        .init()
#endif
    }

    /// The "gauge30" asset catalog image.
    static var gauge30: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge30)
#else
        .init()
#endif
    }

    /// The "gauge35" asset catalog image.
    static var gauge35: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge35)
#else
        .init()
#endif
    }

    /// The "gauge40" asset catalog image.
    static var gauge40: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge40)
#else
        .init()
#endif
    }

    /// The "gauge45" asset catalog image.
    static var gauge45: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge45)
#else
        .init()
#endif
    }

    /// The "gauge50" asset catalog image.
    static var gauge50: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge50)
#else
        .init()
#endif
    }

    /// The "gauge55" asset catalog image.
    static var gauge55: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge55)
#else
        .init()
#endif
    }

    /// The "gauge60" asset catalog image.
    static var gauge60: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge60)
#else
        .init()
#endif
    }

    /// The "gauge65" asset catalog image.
    static var gauge65: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge65)
#else
        .init()
#endif
    }

    /// The "gauge70" asset catalog image.
    static var gauge70: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge70)
#else
        .init()
#endif
    }

    /// The "gauge75" asset catalog image.
    static var gauge75: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge75)
#else
        .init()
#endif
    }

    /// The "gauge80" asset catalog image.
    static var gauge80: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge80)
#else
        .init()
#endif
    }

    /// The "gauge85" asset catalog image.
    static var gauge85: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge85)
#else
        .init()
#endif
    }

    /// The "gauge90" asset catalog image.
    static var gauge90: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge90)
#else
        .init()
#endif
    }

    /// The "gauge95" asset catalog image.
    static var gauge95: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gauge95)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "gauge00" asset catalog image.
    static var gauge00: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge00)
#else
        .init()
#endif
    }

    /// The "gauge05" asset catalog image.
    static var gauge05: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge05)
#else
        .init()
#endif
    }

    /// The "gauge10" asset catalog image.
    static var gauge10: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge10)
#else
        .init()
#endif
    }

    /// The "gauge100" asset catalog image.
    static var gauge100: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge100)
#else
        .init()
#endif
    }

    /// The "gauge15" asset catalog image.
    static var gauge15: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge15)
#else
        .init()
#endif
    }

    /// The "gauge20" asset catalog image.
    static var gauge20: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge20)
#else
        .init()
#endif
    }

    /// The "gauge25" asset catalog image.
    static var gauge25: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge25)
#else
        .init()
#endif
    }

    /// The "gauge30" asset catalog image.
    static var gauge30: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge30)
#else
        .init()
#endif
    }

    /// The "gauge35" asset catalog image.
    static var gauge35: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge35)
#else
        .init()
#endif
    }

    /// The "gauge40" asset catalog image.
    static var gauge40: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge40)
#else
        .init()
#endif
    }

    /// The "gauge45" asset catalog image.
    static var gauge45: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge45)
#else
        .init()
#endif
    }

    /// The "gauge50" asset catalog image.
    static var gauge50: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge50)
#else
        .init()
#endif
    }

    /// The "gauge55" asset catalog image.
    static var gauge55: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge55)
#else
        .init()
#endif
    }

    /// The "gauge60" asset catalog image.
    static var gauge60: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge60)
#else
        .init()
#endif
    }

    /// The "gauge65" asset catalog image.
    static var gauge65: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge65)
#else
        .init()
#endif
    }

    /// The "gauge70" asset catalog image.
    static var gauge70: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge70)
#else
        .init()
#endif
    }

    /// The "gauge75" asset catalog image.
    static var gauge75: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge75)
#else
        .init()
#endif
    }

    /// The "gauge80" asset catalog image.
    static var gauge80: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge80)
#else
        .init()
#endif
    }

    /// The "gauge85" asset catalog image.
    static var gauge85: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge85)
#else
        .init()
#endif
    }

    /// The "gauge90" asset catalog image.
    static var gauge90: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge90)
#else
        .init()
#endif
    }

    /// The "gauge95" asset catalog image.
    static var gauge95: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gauge95)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: Swift.String, bundle: Foundation.Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

