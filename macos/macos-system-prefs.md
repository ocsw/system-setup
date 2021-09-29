# macOS System Preferences

(sections are in default order; see the bottom)

## General

* Default browser
* Prefer tabs: always (?) (if available; see Dock)
* Ask to keep changes
* No close windows (?) (depending)

## Desktop & Screen Saver

* Wallpaper
* Screen saver - shell, 20m
* Hot corner to lock screen (UR)

## Dock / Dock & Menu Bar

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

## Displays

* No mirroring in menu bar (?)
* Display - set on each screen:
    * Auto brightness (if available)
    * True Tone (if available)
* Arrangement:
    * monitors
    * main (top strip) (NOTE: seems to mess up Moom snapshots?)
* Night Shift: Sunset to Sunrise

## Energy Saver / Battery

* Change times? (defaults: 2 min battery, 10 min power)
* No battery in menu bar (after setting up iStat Menus)
* Lock subpages (if available)

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

## Printers & Scanners

* (devices; see [macOS Setup][macos-setup-printers])
* Lock (if available)

[macos-setup-printers]: macos.md#printers

## Startup Disk

* Lock

## iCloud / Apple ID

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

## Software Update / App Store

* Auto check, dl, app/system install
* No OS updates
* Lock (not available on 10.14+ (Mojave)?)

## Network

* WiFi networks
* Wired first if available
* Lock (if available)

## Bluetooth

* (devices; see [macOS Setup][macos-setup-bt-devices])
* Show in menu bar (if not using ToothFairy)

[macos-setup-bt-devices]: macos.md#bluetooth-devices

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

## Sharing

* Computer Name
* Edit:
    * Local Hostname
    * No dynamic global hostname
* -> `sudo scutil --set HostName name`

## Touch ID

* (fingers)

## Users & Groups

* Current:
    * Password:
        * Icon
    * Login Items:
        * incl. Android File Transfer, BetterTouchTool, CrossOver, Dropbox,
          Google Backup, Logitech Gaming Software, Moom, Rectangle,
          SoundSource, SpiderOak One, uBar, Witch, YubiSwitch
        * (some might not be in the list even if they're installed)
* Disable Guest User
* Login Options:
    * Display login as name and password? (entry boxes only, vs list of
      users)
    * Show fast user switching menu as: Icon
* Lock

## Parental Controls

* Lock

## Siri

* Off?
* Listen?
* No menu bar (?)
* Suggestions: all off (?)

## Date & Time

* Time Zone
* Clock (if available; see Dock & Menu Bar):
    * Show date and time
    * Show AM/PM (default)
    * Show day (default)
    * Show date (if no iStat Menus)
* Lock

## Time Machine

* Lock (not available on 10.14+ (Mojave)?)

## Accessibility

* Zoom: (?)
    * Use shortcuts
    * Use gesture with opt
    * Options / Advanced:
        * Flash on notification

## View -> Organize Alphabetically (?), Show All
