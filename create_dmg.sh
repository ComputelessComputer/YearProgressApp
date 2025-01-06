#!/bin/bash

# Set variables
APP_NAME="YearProgressApp"
DMG_NAME="${APP_NAME}_Installer"
APP_PATH="./build/Release/${APP_NAME}.app"
DMG_PATH="./${DMG_NAME}.dmg"
VOLUME_NAME="${APP_NAME} Installer"

# Create a temporary DMG
hdiutil create -size 100m -fs HFS+ -volname "${VOLUME_NAME}" -ov "${DMG_PATH}"

# Mount the DMG
hdiutil attach "${DMG_PATH}"

# Copy the app to the DMG
cp -r "${APP_PATH}" "/Volumes/${VOLUME_NAME}/"

# Create Applications folder symlink
ln -s /Applications "/Volumes/${VOLUME_NAME}/Applications"

# Set the DMG background and icon positions
osascript -e "tell application \"Finder\"
  tell disk \"${VOLUME_NAME}\"
    open
    set current view of container window to icon view
    set toolbar visible of container window to false
    set statusbar visible of container window to false
    set bounds of container window to {400, 100, 900, 400}
    set theViewOptions to the icon view options of container window
    set arrangement of theViewOptions to not arranged
    set icon size of theViewOptions to 72
    set position of item \"${APP_NAME}.app\" of container window to {120, 150}
    set position of item \"Applications\" of container window to {380, 150}
    close
  end tell
end tell"

# Wait a moment for Finder to update
sleep 2

# Unmount the DMG
hdiutil detach "/Volumes/${VOLUME_NAME}"

# Convert the DMG to compressed read-only
hdiutil convert "${DMG_PATH}" -format UDZO -o "${DMG_NAME}_final.dmg"
rm "${DMG_PATH}"
mv "${DMG_NAME}_final.dmg" "${DMG_PATH}"

echo "DMG created at ${DMG_PATH}"
