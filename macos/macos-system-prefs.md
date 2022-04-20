# macOS System Preferences

(sections are in alphabetical order (default changes between versions);
also, see the bottom)

## Accessibility

* Zoom: (?)
    * Use shortcuts
    * Use gesture with opt
    * Options / Advanced:
        * Flash on notification

## Apple ID (prev. iCloud)

* (Account Details)
* iCloud Drive:
    * Documents:
        * Pages/Numbers/Keynote?
        * Only System Preferences (?)
* Photos (if options, else off):
    * Don't upload
    * Allow Shared Albums
* No Mail
* No Safari
* No Keychain (?)
* No Back to My Mac (?)
* Allow Find My Mac (?)
* No News
* No Stocks
* No Home
* No Siri (?)

## Battery (prev. Energy Saver)

* Change times? (defaults: 2 min battery, 10 min power)
* No battery in menu bar (after setting up iStat Menus)
* Lock subpages (if available)

## Bluetooth

* (devices; see [macOS Setup][macos-setup-bt-devices])
* Show in menu bar (if not using ToothFairy)

[macos-setup-bt-devices]: macos.md#bluetooth-devices

## Date & Time

* Time Zone
* Clock (if available; see Dock & Menu Bar):
    * Show date and time
    * Show AM/PM (default)
    * Show day (default)
    * Show date (if no iStat Menus)
* Lock

## Desktop & Screen Saver

* Wallpaper
* Screen saver - shell, 20m
* Hot corner to lock screen (UR)

## Displays

* No mirroring in menu bar (?)
* Display - set on each screen:
    * Auto brightness (if available)
    * True Tone (if available)
* Arrangement:
    * monitors
    * main (top strip) (NOTE: seems to mess up Moom snapshots?)
* Night Shift: Sunset to Sunrise

## Dock & Menu Bar (prev. Dock)

* Dock:
    * On right (or left, depending on monitor setup)
    * Prefer tabs: always (?) (if available; see General)
    * Minimize windows into app icon
    * Autohide Dock
    * No recent apps
* Menu Bar (if available):
    * No autohide menu bar
* Control Center (if available):
    * Display: Don't show?
    * Now Playing: Don't show (?)
* Menu Bar Only (if available):
    * Clock:
        * Show day (default)
        * Show date (if no iStat Menus)
        * Show AM/PM (default)
    * Spotlight: Don't show (?)

## Extensions

* Finder Extensions:
    * Google Drive, Dropbox
* Quick Look (if available):
    * Bartender
* Share Menu:
    * OneNote on
    * others off? (except Copy Link, ?Reminders)
* Today (if available):
    * only iStat Menus, Calculator (in that order)

## Family Sharing (prev. Parental Controls)

* Lock (if available)

## General

* Default browser
* Prefer tabs: always (?) (if available; see Dock)
* Ask to keep changes
* No close windows (?) (depending)

## Keyboard

* Keyboard:
    * (default repeat: 7/8, delay: 3/6)
    * Don't adjust brightness (?)
    * Touch Bar / Control Strip:
        * small: no Siri, add lock on left (?)
        * big: no Siri?, lock, screenshot (left of media)
    * Modifier Keys:
        * Caps Lock: none (?) cmd? esc? (per keyboard)
        * Reverse Option and Command on Windows keyboards
* Text:
    * Remove omw
    * No correct/capitalize/period
    * No smart quotes?
* Shortcuts:
    * Mission Control:
        * Show Desktop: ^F11 (because of VSCode)
        * Show Dashboard: ^F12 (because of VSCode; if available)
    * Accessibility: Zoom on (?)
    * App Shortcuts:
        * Lock Screen: `ctrl-opt-cmd-L` [10.13+ (High Sierra)]
    * (other shortcuts)
* Input Sources:
    * No menu bar

## Mouse

* No Natural scroll
* (default tracking: 4/10, scrolling 4/8, double-click 9/11)

## Network

* WiFi networks
* Wired first if available
* Lock (if available)

## Printers & Scanners

* (devices; see [macOS Setup][macos-setup-printers])
* Lock (if available)

[macos-setup-printers]: macos.md#printers

## Security & Privacy

* General:
    * Require password immediately (?)
* Filevault on
* Firewall:
    * On
    * Don't block all
    * No built-in
    * No downloaded
    * No stealth mode
    * (Deny incoming as programs request it)
* Privacy:
    * Location Services:
        * Enable
        * All apps off (except iStat if using Current Location)
        * System Services: don't show icon
    * Contacts: all off
    * Calendars: all off
    * Camera: Chrome, Logitech Gaming Software, Franz, Skype, Slack, Zoom
        * (some might not be in the list even if they're installed)
    * Microphone: Blue, Chrome, Logitech Gaming Software, Franz, Skype, Slack,
      Zoom
        * (some might not be in the list even if they're installed)
    * Accessibility:
        * allow, incl. Bartender, BetterTouchTool, Dropbox, Google Chrome,
          Google Software Update, iTerm, Kindle, Logitech Gaming Software,
          Moom, Muzzle, Rectangle, Slack, SoundSource, Steam, uBar, Witch,
          Xcode Helper
        * but probably deny Zoom
        * (some might not be in the list even if they're installed)
    * Automation:
        * all on (?), incl.:
            * Backup and Sync from Google -> System Events
            * FortiClient -> Google Chrome, Safari
            * Franz -> System Events
            * Google Software Update -> System Events
            * Installer -> System Events?
            * iTerm -> Google Chrome, System Events
            * Logitech Control Center Daemon -> System Events
            * SpiderOak One -> System Events
            * uBar -> Finder, iTunes, Spotify, VLC
            * Witch -> Code, Slack, System Preferences, System Events
        * (some might not be in the list even if they're installed)
    * No analytics
* Lock

## Sharing

* Computer Name
* Edit:
    * Local Hostname
    * No dynamic global hostname
* -> `sudo scutil --set HostName name`

## Siri

* Off?
* Listen?
* No menu bar (?)
* Suggestions: all off (?)

## Software Update (prev. App Store)

* Auto check, dl, app/system install
* No OS updates
* Lock (if available)

## Startup Disk

* Lock

## Time Machine

* Lock (if available)

## Touch ID

* (fingers)

## Trackpad

* Point & Click:
    * Look up with 3 fingers
    * Secondary with 2
    * Tap to click?
    * Click: Medium
    * Tracking Speed: 4/10 (default) (5?)
    * Force Click
* Scroll & Zoom:
    * Scroll dir: Natural off
    * Pinch
    * Double-tap
    * Rotate
* More Gestures: all on (?)

## Users & Groups

* Current:
    * Password:
        * Icon
    * Login Items:
        * incl. Android File Transfer, BetterTouchTool, CrossOver, Dropbox,
          Google Drive, Logitech Gaming Software, Moom, Rectangle,
          SoundSource, SpiderOak One, uBar, Witch, YubiSwitch
        * (some might not be in the list even if they're installed)
* Disable Guest User
* Login Options:
    * Display login as name and password? (entry boxes only, vs list of
      users)
    * Show fast user switching menu as: Icon
* Lock

## View -> Organize Alphabetically (?), Show All
