# macOS System Settings

(as of macOS 13 Ventura)

## Apple ID

* Account details
* iCloud:
    * Photos: Off (?)
    * iCloud Drive:
        * Apps:
            * Turn off Preview, QuickTime, TextEdit (?)
            * More?
    * Passswords & Keychain: Off
    * Find My Mac: On (?)
    * Safari: Off (?)
    * Siri: Off (?)
* Devices

## Wi-Fi

* Networks

## Bluetooth

* Devices; see [macOS Setup][macos-setup-bt-devices]

[macos-setup-bt-devices]: macos.md#bluetooth-devices

## Network

* Firewall:
    * On
    * Options:
        * Don't block all
        * No built-in
        * No downloaded
        * No stealth mode
        * (Deny incoming as programs request it)
            * Exceptions:
                * Control Center?
                * Dropbox?
                * Spotify
                * Universal Control?
* ...
    * Set Service Order:
        * USB, TB, Wi-Fi (default)

## Notifications

* Show previews: When Unlocked (default)
* Not when sleeping
* Allow when locked
* Not when mirroring
* Allow all apps (?)

## General

* Software Update:
    * Auto check, dl, app/system install
    * No OS updates
* AirDrop & Handoff:
    * Allow Handoff (?)
    * AirDrop: Contacts Only (?)
    * AirPlay: on, Current User (?)
* Login Items:
    * Open at Login, including:
        * Android File Transfer, BetterTouchTool, CrossOver, Dropbox,
          Google Drive, Logitech Gaming Software, Moom, Rectangle,
          SoundSource, SpiderOak One, uBar, Witch, YubiSwitch
        * (Some might not be in the list until run)
    * Allow in the Background: all (?)
* Date & Time:
    * Time Zone
    * City
* Sharing:
    * Edit:
        * Local Hostname
        * No dynamic global hostname
    * -> `sudo scutil --set HostName name`
* Time Machine:
    * (Set up if using)

## Accessibility

* Zoom: (?)
    * Use keyboard shortcuts
    * Use scroll gesture with opt
    * Advanced:
        * Flash on notification

## Control Center

* Control Center Modules:
    * Show:
        * Wi-Fi
    * Show When Active:
        * Focus, Screen Mirroring, Display, Sound (?), Now Playing (?)
    * Don't Show:
        * Bluetooth (if using ToothFairy, else show), AirDrop, Stage Manager
* Other Modules:
    * No battery in Menu Bar (after setting up iStat Menus)
    * Fast User Switching in Menu Bar (if using)
* Menu Bar Only:
    * Clock
        * Show date: Never (if using iStat Menus, else Always (?))
        * Show day (default)
        * Show AM/PM (default)
    * Spotlight: Don't Show
    * Siri: Don't Show
    * Time Machine: Show if using

## Siri & Spotlight

* Siri: off (?)
    * or, Listen?
    * Suggestions: all off?
* Spotlight:
    * Remove Bookmarks & History (?)
    * More?
* Spotlight Privacy: Add locations?

## Privacy & Security

* Location Services:
    * Enable
    * All apps off (except iStat if using Current Location)
    * System Services: don't show icon
* Contacts: Full Disk Access apps, if present
* Calendars: Full Disk Access apps, if present
* Reminders: Full Disk Access apps, if present
* Photos: Full Disk Access apps, if present
* Bluetooth: ToothFairy
* Microphone:
    * Blue, Franz, Google Chrome, Logitech Gaming Software, Loom, Skype, Slack,
      Zoom
    * (Some might not be in the list until run)
* Camera:
    * Franz, Google Chrome, Logitech Gaming Software, Loom, Skype, Slack, Zoom
    * (Some might not be in the list until run)
* Files and Folders:
    * Allow as necessary, including:
        * DaisyDisk: Full Disk Access
        * Google Chrome: Downloads
        * IntelliJ: Downloads
        * iTerm: Full Disk Access, Google Drive
        * Slack: Downloads
        * Suspicious Package: Desktop, Documents, Downloads
        * uBar: Full Disk Access
        * XnViewMP: Desktop, Documents, Downloads, Google Drive
* Full Disk Access:
    * Allow only:
        * DaisyDisk, iTerm, uBar
* Accessibility:
    * Allow as necessary, including:
        * Bartender, BetterTouchTool, Dropbox, Google Chrome, iTerm, Kindle,
          Logitech Gaming Software, Loom, Moom, Muzzle, Rectangle, Slack,
          SoundSource, Steam, uBar, Witch, Xcode Helper, Yubiswitch
    * But probably deny Zoom (& not sure about Google Drive)
    * (Some might not be in the list even if installed)
* Screen Recording:
    * Allow as necessary, including:
        * Bartender, Franz, Google Chrome, Kap, Loom, Skype, Slack, uBar, Zoom
    * (Some might not be in the list until run)
* Automation:
    * Allow all (?), including:
        * BetterTouchTool -> Shortcuts Events
        * iTerm -> Google Chrome (click a lint first)
        * SpiderOak One -> System Events
        * uBar -> Finder, Spotify
    * (Some might not be in the list even if installed)
* App Management:
    * Don't allow iTerm (?)
* Analytics & Improvements:
    * All off (?)
* Security:
    * Allow from App Store and identified developers
    * Accessories: Ask for New (?)
    * FileVault: on
* Extensions, including:
    * Added extensions:
        * Bartender: Quick Look
        * Dropbox: Finder, Sharing
        * FinderHelper: Finder
        * Google Drive: Finder
        * Microsoft OneNote: Sharing
        * Suspicious Package: Quick Look
    * Finder extensions:
        * Google Drive
    * Quick Look:
        * Bartender, Suspicious Package
    * Sharing:
        * All on except Books, Shortcuts (?)
        * Including Dropbox Transfer, OneNote
* Advanced:
    * Require admin password?

## Desktop & Dock

* Dock:
    * On right (or left, depending on monitor setup; if using uBar)
    * Double-click title bar: Do Nothing (?)
    * Minimize windows into app icon (?)
    * Autohide Dock (if using uBar)
    * No recent apps
* Menu Bar:
    * Autohide: In Full Screen Only (?)
* Windows & Apps:
    * Prefer tabs: Always (?)
    * Ask to keep changes: on
    * Close windows: off (?) (depending)
    * Default web browser
* Hot Corners:
    * UR: Lock Screen (?)
    * Nothing in the other corners

## Displays

* Arrange:
    * Monitors
    * Main (top strip) (NOTE: seems to mess up Moom snapshots?)
* Devices, resolutions, etc., including:
    * Main display, extended display (also under Arrange)
    * Auto brightness
    * True Tone
* Advanced:
    * Link on, push (?)
    * Battery & Energy:
        * Slightly dim
        * Don't prevent sleeping
* Night Shift: Sunset to Sunrise

## Wallpaper

* Download
* (Add Folders)
* Set wallpaper

## Screen Saver

* Shell, 20m

## Battery

* Options:
    * Wake for network access: Never (?)

## Lock Screen

* Change times? (defaults: 2 min battery, 10 min power)
* Require password: Immediately (?)
* Login window shows: Name and password? (entry boxes only, vs list of users)

## Touch ID & Password

* (Fingers)
* No Apple Pay
* No purchases

## Users & Groups

* Icon(s)
* Disable Guest User

## Wallet & Apple Pay

* Don't Add Orders to Wallet?

## Keyboard

* Keyboard:
    * (default repeat: 7/8, delay: 3/6 (R->L))
    * Don't adjust brightness (?)
    * Globe -> Do Nothing?
    * Keyboard Shortcuts:
        * Mission Control:
            * Show Desktop: ^F11 (because of VSCode)
        * Accessibility: Zoom on (?)
        * App Shortcuts:
            * All Applications:
                * Lock Screen: `ctrl-opt-cmd-L`
                * Sleep: `ctrl-opt-cmd-Q`
            * (other shortcuts)
        * Modifier Keys:
            * Caps Lock: none (?) cmd? esc? (per keyboard)
            * Reverse Option and Command on Windows keyboards
* Text Input:
    * Input Sources:
        * No menu bar
        * No correct/capitalize/period
        * No smart quotes?
    * Text Replacements:
        * Remove omw

* Touch Bar / Control Strip:
    * small: no Siri, add lock on left (?)
    * big: no Siri?, lock, screenshot (left of media)

## Mouse

* No Natural scrolling
* Tracking: 7/10 (depending)
* (defaults: tracking 4/10, double-click 9/11, scrolling 4/8)

## Trackpad

* Point & Click:
    * Tracking Speed: 4/10 (default)
    * Click: Medium (default)
    * Force Click on
    * Look up with 3 fingers
    * Secondary with 2
    * Tap to click?
* Scroll & Zoom:
    * Natural scrolling: off
    * Pinch: on
    * Double-tap: on
    * Rotate: on
* More Gestures: all on (?)
    * App Exposé: down with 3

## Printers & Scanners

* Devices; see [macOS Setup][macos-setup-printers]

[macos-setup-printers]: macos.md#printers
