# macOS System Settings

(as of macOS 26 Tahoe)

## Apple Account

* Account details
* iCloud:
    * Saved to iCloud:
        * Photos: off (?)
        * iCloud Drive:
            * Sync: on (default) (?)
            * Desktop & Documents: off (default)
            * Apps:
                * Turn off Preview, QuickTime, TextEdit (?)
                * More?
        * Passwords & Keychain: off
        * Find My Mac: on (default) (?)
        * Safari: off (?)
        * Siri: off (?)
        * Maps: on (default) (?)
* Media & Purchases:
    * Don't use Touch ID (?)
    * Free: Always (?)
    * Purchases: Always (?)
* Devices

## Wi-Fi

* Networks

## Bluetooth

* Devices; see [macOS Setup][macos-setup-bt-devices]

[macos-setup-bt-devices]: macos.md#other-bluetooth-devices

## Network

* Firewall:
    * On
    * Options:
        * Block all: off
        * Allow built-in: off
        * Allow downloaded: off
        * Stealth mode: off (default)
        * Block all except list below
        * Allow, depending:
            * rapportd (for Handoff, Universal Clipboard, Universal Control)
            * remoted
            * sharingd (for AirDrop, Universal Clipboard)
            * Universal Control
            * smbd (if using it)
            * Control Center?
            * Dropbox?
            * SpiderOak?
            * Spotify?
        * (Deny incoming as programs request it)
* ...:
    * Set Service Order:
        * USB, TB, Wi-Fi (default?)

## Battery

* Options...:
    * Slightly dim on batt: on (default)
    * Prevent automatic sleeping: off (default)
    * Wake for network access: Never (?)

## General

* Software Update:
    * Automatic Updates:
        * Download: on (default)
        * OS updates: off
        * Install system: on (default)
* AirDrop & Continuity:
    * AirDrop: Contacts Only (default) (?)
    * Allow Handoff: on (default) (?)
    * AirPlay: on, Current User (default) (?)
* Date & Time:
    * Time zone
    * Closest city
* Login Items & Extensions:
    * Open at Login, including:
        * Amphetamine, (Android File Transfer), Bartender, Better OSD,
          BetterTouchTool, (CrossOver), Dropbox, Google Drive, Hammerspoon,
          Moom, Rectangle, Signal Shifter, (SoundSource), SpiderOak One, uBar,
          Witch, YubiSwitch
        * (Some might not be in the list until run)
    * App Background Activity: allow all (?)
    * Extensions:
        * BetterTouchTool:
            * File Provider: off (?)
        * Dropbox:
            * File Provider:
                * Dropbox: on
                * Dropbox Finder Extension: off (?)
            * Sharing: on
        * Google Drive:
            * File Provider: on
        * Kindle:
            * Sharing: off
        * Logitech G HUB:
            * (w/PRO X headset (DAC))
            * Driver Extension:
                * Blue Voice: on
                * G HUB HID: on
            * (may require rebooting)
        * Microsoft OneNote:
            * Sharing: on
        * Suspicious Package:
            * Quick Look: on
        * Xcode
            * Quick Look: on
            * Spotlight: on
* Sharing:
    * Edit...:
        * Local hostname
        * Use dynamic global hostname: off (default)
    * -> `sudo scutil --set HostName name`
* Time Machine:
    * (Set up if using)

## Accessibility

* Zoom: (?)
    * Use [keyboard shortcuts][hotkeys-opt-cmd]: on
    * Use scroll gesture with Option ([`opt`-scroll][hotkeys-opt])
    * Advanced:
        * Flash on notification: on

[hotkeys-opt]: hotkeys.md#option-opt--
[hotkeys-opt-cmd]: hotkeys.md#optioncommand-opt-cmd--

## Apple Intelligence & Siri

* Siri: off (?)
    * or, Listen?
    * Suggestions: Safari off (and others?)

## Desktop & Dock

* Dock:
    * Size?
    * Dock position: Right (or Left, depending on monitor setup; if using uBar)
    * Window title bar double-click: No Action (?)
    * Minimize windows into app icon: on (?)
    * Autohide the Dock: on (if using uBar)
    * Show suggested and recent: off
* Desktop & Stage Manager
    * Click wallpaper to show desktop: Always (default) (?)
* Widgets:
    * Show Widgets:
        * On Desktop: off
    * Default web browser
* Windows
    * Prefer tabs: Always (?) (default is In Full Screen)
    * Ask to keep changes: on
    * Close windows: off (?) (depending)
    * Drag to edge: off (?)
    * Drag to menu bar: off (?)
* Mission Control:
    * Automatically rearrange Spaces: off
    * Switch when switching: on
    * Group windows by application: off
    * Displays have separate Spaces: on (default)
* Hot Corners:
    * UR: Lock Screen?
    * Nothing in the other corners

## Displays

* Devices, resolutions, etc., including:
    * Main display, extended display (also under Arrange...)
        * (NOTE: Changing this seems to mess up Moom snapshots?)
    * Auto brightness: on
    * True Tone: on
* Arrange...:
    * Layout
    * Top strip (Menu Bar) = main
* Advanced...:
    * Link to Mac or iPad:
        * Allow pointer/kbd to move: on
        * Push through the edge: on
* Night Shift...:
    * Schedule: Sunset to Sunrise (?)

## Menu Bar

* Autohide: In Full Screen Only (default) (?)
* Show background: off (default) (?)
* Recents: None? (depending; default is 10)
* Menu Bar Controls:
    * Clock -> Clock Options...:
        * Date:
            * Show date: off (if using iStat Menus, else on)
                * (seems to require a reboot to take effect?)
            * Show the day of the week: on (default)
        * Time:
            * Show AM/PM: on (default)
    * Spotlight: off
    * Bluetooth: off (if using ToothFairy, else show)
    * Battery: off (after setting up iStat Menus)
    * Focus, Screen Mirroring, Display, Sound (?), Now Playing:
        * Show When Active (default)
    * Fast User Switching: if using, on/Icon, else off
    * Time Machine: on if using
* Allow in the Menu Bar: allow all

## Spotlight

* Results from Apps:
    * Safari: off
* Results from Clipboard: off (default)
* Search Privacy...: Add locations? (depending)

## Wallpaper

* Download
* Your Photos:
    * Add Photo...:
        * Choose Folder...
* For different wallpaper on each screen, turn off "Show on all Spaces"
* Choose wallpaper
    * It seems like wallpaper is per set of monitors, i.e. actual monitor
      model(s) or serial number(s)?  So set e.g. for no monitors, home desk
      monitor, work desk monitor(s), etc.
* Screen Saver...:
    * Start Screen Saver...: After 20 minutes (default)
        * (?) - longer than display timeout
    * Use Screen Saver: Automatic, for OS images, or Shell

## Notifications

* Notification Center:
    * Show previews: When Unlocked (default)
    * Show Notifications:
        * when display is sleeping: off (default)
        * when screen is locked: on (default)
        * when mirroring or sharing: Notifications Off (default)
* Application Notifications:
    * Allow all (?)

## Focus

* Share across devices: on (default) (?)

## Lock Screen

* Change times? (defaults: 2 min battery, 10 min power)
* Require password: Immediately (?) (default: 5 min)
* When Switching User:
    * Login window shows: Name and password?
        * (entry boxes only, vs list of users)

## Privacy & Security

* Location Services:
    * Enable
    * Deny all apps, except:
        * Google Chrome
        * iStat Menus Menubar (if using Current Location)
    * Show location icon for System Services: off (default)
* Calendars:
    * Allow Disk Inventory X, DaisyDisk, iTerm, uBar, if present
* Contacts:
    * Allow Disk Inventory X, DaisyDisk, iTerm, uBar, if present
* Files & Folders:
    * Allow as necessary, including (if present):
        * Disk Inventory X: Desktop, Documents, Downloads
            * (also popups for Dropbox, Google Drive)
            * (or allow FDA?)
        * Epic Games Launcher: Downloads
        * Google Chrome: Downloads
        * Google Drive: Desktop, Documents, Downloads (but not Network (?))
        * IntelliJ: Downloads
        * iTerm: Google Drive
        * Slack: Downloads
        * SpiderOakONE: Desktop, Documents, Downloads
            * But not Network, Removable Volumes (?)
        * Suspicious Package: Desktop, Downloads (?)
            * But not Documents (?)
        * XnViewMP: Desktop, Documents, Downloads, (?)Google Drive
    * Deny:
        * Logitech G Hub: Removable Volumes (?)
    * (Apps with FDA entries say FDA even if it's actually off; remove non-OS
      apps from FDA list)
* Full Disk Access:
    * Allow only:
        * AppCleaner, DaisyDisk (?), iTerm, uBar
        * Disk Inventory X?
    * Remove non-OS turned-off entries
* Photos:
    * Allow:
        * Google Drive and SpiderOakONE, if necessary/present
        * Disk Inventory X, DaisyDisk, uBar, if present
        * iTerm
    * All "Full Access" (?)
        * vs "Limited Access" (select photos) or "Add Photos Only"
* Reminders:
    * Allow Disk Inventory X, DaisyDisk, iTerm, uBar, if present
* Accessibility:
    * Allow as necessary, including:
        * Bartender, BetterTouchTool, Dropbox, Google Chrome, Hammerspoon,
          iTerm, Logitech G HUB Agent, Loom, Moom, Muzzle, Rectangle, Slack,
          (SoundSource), Steam, uBar, Witch, Xcode Helper, Yubiswitch
    * But probably deny Zoom (& not sure about Google Drive)
    * (Some might not be in the list even if installed)
* App Management:
    * Don't allow AppCleaner (if present) (?)
    * Don't allow iTerm (?)
* Automation:
    * Allow all (?), including:
        * BetterTouchTool -> Shortcuts Events, System Events (if present)
        * iTerm -> Google Chrome (click a link first - no longer necessary?)
        * SpiderOak One -> System Events
        * uBar -> Finder, Spotify
    * (Some might not be in the list even if installed)
* Bluetooth:
    * BetterTouchTool (?), Franz (if present) (?), iStat Menus, Logitech G HUB,
      Signal Shifter, (SoundSource), ToothFairy, Zoom (?)
* Camera:
    * Franz, Google Chrome, Logitech G HUB, Loom, Slack, Zoom
    * (Some might not be in the list until run)
* Input Monitoring:
    * BetterTouchTool (if present)
* Microphone:
    * (Audio Routing Kit (ARK) (if present)), Franz, Google Chrome,
      Logitech G HUB, Loom, Slack, Zoom
    * (Some might not be in the list until run)
* Screen & System Audio Recording:
    * Allow as necessary, including:
        * BetterTouchTool, Bartender, Franz (?), Google Chrome, Kap, Loom,
          Slack, uBar, Zoom
    * Deny Logitech G HUB (?)
    * System Audio Recording Only:
        * (Audio Routing Kit (ARK) (if present))
    * (Some might not be in the list until run)
* Analytics & Improvements:
    * All off (?)
    * Maybe app dev on?
* Security:
    * Allow applications from: App Store and Known developers
    * FileVault: on; save Recovery Key
    * Accessories: Ask for new (?)
* Advanced...:
    * Require admin password?

## Touch ID & Password

* Touch ID
    * (Fingers)
* Use for Apple Pay: off
* Use for purchases: off (default)

## Users & Groups

* Icon(s)
* Guest User: Off (default)

## Wallet & Apple Pay

* Add Orders to Wallet: off (?)

## Keyboard

* (defaults: repeat: 7/8, delay (R->L): 3/6)
* Adjust brightness in low light:
    * Black laptop: on (default)
    * Gray/silver laptop: off and max
* Turn backlight off after inactivity: Never (default) (?)
* Press globe/fn key to: Do Nothing (?) (depending on keyboard?)
* (Touch Bar -> Customize):
    * small: no Siri, add sleep (lock?) on left (?)
    * big: no Siri?, sleep (lock?), screenshot (left of media)
* Keyboard Shortcuts...:
    * Mission Control:
        * Show Desktop: [`ctrl-F11`][hotkeys-ctrl] (because of VSCode)
    * Accessibility:
        * Zoom: on (?)
    * App Shortcuts:
        * All Applications:
            * `Lock Screen`: [`ctrl-opt-cmd-L`][hotkeys-ctrl-opt-cmd]
            * `Sleep`: [`ctrl-opt-cmd-Q`][hotkeys-ctrl-opt-cmd]
        * Google Chrome:
            * `Task Manager`: `` opt-shift-` ``
        * Microsoft OneNote:
            * `Close This Notebook`: `ctrl-opt-W`
                * (to prevent Sync All -> CTN)
        * (other shortcuts)
    * Function Keys: Use as standard? (to prevent accidental Do Not Disturb)
    * Modifier Keys:
        * Caps Lock: No Action (?) `cmd`? `esc`? (per keyboard)
        * Reverse Option and Command on Windows keyboards
* Text Input:
    * Input Sources -> Edit...:
        * Correct spelling: off
        * Capitalize words: off
        * Show inline predictive text: off?
        * Add period: off
        * Use smart quotes and dashes: off?
    * Text Replacements...:
        * Remove `omw`
* Dictation:
    * Shortcut: Off / Press MIC (?) (no Off setting on Apple Silicon?)

[hotkeys-ctrl]: hotkeys.md#control-ctrl--
[hotkeys-ctrl-opt-cmd]: hotkeys.md#controloptioncommand-ctrl-opt-cmd--

## Mouse

* Tracking: 7/10 (depending)
* Natural scrolling: off
* (defaults: tracking 4/10, double-click 9/11, scrolling 4/8)

## Trackpad

* Point & Click:
    * Tracking Speed: 4/10 (default)
    * Click: Medium (default)
    * Look up: Tap with Three fingers (or Off?)
    * Secondary click: Click with Two Fingers (default?)
    * Tap to click: on?
* Scroll & Zoom:
    * Natural scrolling: off
* More Gestures:
    * App Exposé: Swipe Down with Three Fingers

## Printers & Scanners

* Devices; see [macOS Setup][macos-setup-printers]

[macos-setup-printers]: macos.md#printers
