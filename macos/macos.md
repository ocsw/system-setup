# macOS Setup

NOTE: most of this has to be done separately for each user account
(e.g., main and presentations)

## OS Settings

### FileVault

incl. save recovery key (pic?)

### Updates (OS and App Store)

### System Settings

See [System Settings Setup][macos-system-settings]

NOTE: Do Desktop & Dock -> Windows immediately!

* Ask to keep changes: on
* Close windows: off

Also advisable:

* Turn off Natural scrolling in Mouse and Trackpad
* Reverse Option and Command on Windows keyboards
* Set up the Lock Screen and Sleep keyboard shortcuts

See also [Re-check System Settings][recheck-settings]

[macos-system-settings]: macos-system-settings.md
[recheck-settings]: #re-check-system-settings

### App Store

* Sign in
* Settings:
    * Automatic Updates
    * No auto from other devices
    * Automatically download content
    * No Video Autoplay?

### Make Directories (depending)

* `mkdir -p ~/Books ~/install ~/repos ~/scraps ~/wip`

### Finder

* General:
    * New: `Downloads` (or homedir?)
    * Don't open in tabs
* Sidebar:
    * Show all (except `AirDrop` (depending), `Movies` (?), machine?)
    * Note `-` on HDs
* Advanced:
    * Remove after 30 days
* `cmd-shift-.` for dotfiles
* Sidebar Order:
    * (`AirDrop`)
    * `Dropbox`
    * `Google Drive`
    * `Recents`
    * `Applications`
    * `Desktop`
    * `Documents`
    * `Downloads`
    * `Books` (drag to sidebar)
    * (`Movies`)
    * `Music`
    * `Pictures`
    * `install` (?)
    * `repos`
    * `scraps`?
    * `wip` (?)
    * (other data, install, etc.)
    * homedir

## Networking

### [PIA][pia]

* General:
    * Launch on startup
    * Don't connect on launch
* (Exclude io.nwjs.nwjs from uBar (?))

[pia]: https://www.privateinternetaccess.com/

### (other VPNs)

## Hardware

[istat-power]: istat.md#power

### Keyboards

* Set up
* [System Settings][system-settings-keyboard]
* If Bluetooth, add power to [iStat Menus][istat-power]

[system-settings-keyboard]: macos-system-settings#keyboard

### Mice

* Set up
* [System Settings][system-settings-mouse]
* If Bluetooth, add power to [iStat Menus][istat-power]

[system-settings-mouse]: macos-system-settings#mouse

### [Logitech G HUB][ghub] (w/G502 mouse, C920 webcam)

* -> System Settings -> Privacy &S -> allow (x2)
* -> System Settings -> Privacy &S:
    * Bluetooth: allow
    * Microphone: allow (after opening C920 settings)
    * Camera: allow (after opening C920 settings)
    * Accessibility: allow
    * Screen Recording: deny (?)
* Settings (top left):
    * Enable automatic updates
    * App Settings:
        * Start Up: Always
        * Lighting:
            * Turn off after inactivity
            * Allow apps to control
        * Experience:
            * No usage data (?)
            * No error logs (?)
        * Persistent Profile: Default
        * Desktop Notifications: Enabled (?)
* G502 LIGHTSPEED:
    * Sensitivity: 3200 DPI
    * Assignments: G7/G8: use for volume (?) (or just remove DPI Down/Up?)
    * LIGHTSYNC:
        * Primary: Off
            * (to save power; but if keeping the DPI buttons, turn it on?)
        * Logo: Fixed, Vibrant / purple (?) (or Mono / light gray?)
    * Settings:
        * DPI Lighting: off (?)
        * Device Startup Effect: off (?)
        * Low Battery Mode: Auto, Breathing red
        * On-board Memory Mode:
            * (Restore to defaults)
            * Turn on and set Slot 1 to the Desktop Default, then turn off
* (Exclude from uBar?)

[ghub]: https://www.logitechg.com/en-us/innovation/g-hub.html

### [YubiSwitch][yubiswitch]

[Download][yubiswitch-dl]

* -> System Settings -> Privacy &S -> Accessibility: allow
* No enable on sleep
* Auto off
* Preferences:
    * Hotkey (`ctrl-opt-cmd-Y`)
    * ProductID
        * -> `ioreg -p IOUSB -l -w 0 -x | grep Yubikey -A10 | grep idProduct`
        * `0x407` for nano
    * (VendorID)
        * -> `ioreg -p IOUSB -l -w 0 -x | grep Yubikey -A10 | grep idVendor`
        * `0x1050` for nano
    * Switch off after 5 sec
    * Start on login

[yubiswitch]: https://github.com/pallotron/yubiswitch
[yubiswitch-dl]: https://github.com/pallotron/yubiswitch/releases/

### Other Bluetooth Devices

e.g. headphones, controllers

### [ToothFairy][toothfairy] ($) (App Store)

* -> System Settings -> Privacy &S -> Bluetooth: allow
* Add devices:
    * Icon
    * Show battery
    * Hotkey (?) (e.g. `ctrl-opt-cmd-H`)
    * Advanced:
        * Improve sound quality (depending)
* Launch at login
* Hide Dock icon
* (Exclude from uBar)

[toothfairy]: https://c-command.com/toothfairy/

### [SoundSource][soundsource] ($)

The ACE helper requires a reboot to install.  On Apple Silicon, it also requires booting into the Recovery Environment and doing one of the following:

* Setting "Reduced Security" with "Allow user management" in the Startup Security Utility, or
* Running this command in a Terminal: `spctl kext-consent add 7266XEXAPM`

(See: [first method][soundsource-first], [second method][soundsource-second])

* -> System Settings -> Privacy &S:
    * Bluetooth: allow
    * Accessibility: allow
        * (after Super Volume Keys)
* General:
    * Start at login
    * Hotkey (`ctrl-opt-cmd-S`)
* Audio:
    * Super Volume Keys
* Appearance:
    * Follow Accent Color
    * Show all meters (?)
* License

[soundsource]: https://rogueamoeba.com/soundsource/
[soundsource-first]: https://rogueamoeba.com/support/knowledgebase/?showArticle=ACE-StepByStep&product=SoundSource
[soundsource-second]: https://rogueamoeba.com/support/knowledgebase/?showArticle=ACE-AlternateInstall&product=SoundSource

### [Balance Lock][balance-lock] (optional App Store)

[Download - direct][balance-lock] (Download link is at the bottom)

[Download - App Store][balance-lock-app-store]

* Launch on login
* Preferences:
    * Automatically launch
    * No notifications

[balance-lock]: https://www.tunabellysoftware.com/balance_lock/
[balance-lock-app-store]: https://apps.apple.com/app/balance-lock/id1019371109?mt=12

### [Blue Sherpa][blue-sherpa]

* -> System Settings -> Privacy &S -> Microphone: allow

[blue-sherpa]: https://www.bluemic.com/en-us/products/sherpa/

### [Android File Transfer][android-ft]

(No Mac version anymore?)

[android-ft]: https://www.android.com/filetransfer/

### Printers

### Scanners

## Backup and Sync

### [SpiderOak One][spideroak-one]

[Download][spideroak-one-dl]

* -> System Settings -> Privacy &S:
    * Photos: allow (after setup)
    * Automation -> System Events: allow
* Log in
* General:
    * Launch minimized?
    * Don't show splash screen
    * Launch at startup
* Network:
    * Allow LAN-Sync?
* remove Hive symlink from desktop
* Backup (all from homedir):
    * Folders:
        * `.gnupg` (except `*.conf`), (`.gnupg_pre_2.1` except `*.conf`),
          `.ssh`
        * `Books`, `Desktop`, `Documents`, `Downloads`, `install`, `Movies`,
          `Music`, `Pictures`, `scraps`, (Hive)
        * (other data, install, etc.)
        * [work: only `Books`, `Music`, `Pictures`]
    * Files:
        * `.to_back_up/*`, especially `*.local`, except for history files and
          `.hstr_favorites`
        * [work: skip]

[spideroak-one]: https://crossclave.com/one/
[spideroak-one-dl]: https://crossclave.com/opendownload/

### [Google Drive][google-drive]

* -> System Settings -> Privacy &S:
    * Files and Folders: allow
        * (as necessary; there should be popup requests when they're first
          needed)
    * Extensions (including for FinderHelper):
        * Added extensions: allow
        * Finder extensions: allow
* Sign in
* Start syncing
* Computer:
    * Name: change to match hostname [?]
    * Folders (all from homedir):
        * `.to_back_up`, `Books`, `Music`, `scraps`, `wip`
        * (+ more depending on contents / context)
        * [work: add `Desktop`, `Documents`, `Downloads`, ?`Pictures`]
* Google Drive:
    * Stream files (?)
* Settings:
    * Google Photos:
        * Original Quality
    * no hotkey
* -> Finder sidebar position
* (Exclude from uBar)

[google-drive]: https://www.google.com/drive/download/

### [Dropbox][dropbox]

[Download][dropbox-dl]

* -> System Settings -> Privacy &S:
    * Accessibility: allow
    * Extensions:
        * Added extensions:
            * Finder extensions: allow
            * Sharing: allow
        * Finder extensions: allow (if there)
        * Sharing: allow
* General:
    * Start on startup
* Account
* Backups:
    * No notifications for external drives (?)
    * No camera uploads (?)
* Network:
    * No LAN sync (?)
* -> Finder sidebar position
* (Exclude from uBar)

[dropbox]: https://www.dropbox.com/
[dropbox-dl]: https://www.dropbox.com/install

## UI Tools and Tweaks

### [uBar][ubar] ($)

* -> System Settings -> Privacy &S:
    * Full Disk Access: allow
    * Accessibility: allow
    * Screen Recording: allow
    * Automation:
        * Finder: allow
        * Spotify: allow
* General:
    * Pinning: all if not ultrawide, else bottom only
    * Display: Main (?)
    * No window grouping
    * No download notifications (?)
* (Theme)
* Areas:
    * No Spaces (?)
    * No Sound
    * No Battery
    * No Separators (?)
    * No Clock (?)
* Apps:
    * App order: manual
    * App inclusions: order (see bottom)
    * App exclusions:
        * Amphetamine
        * Dropbox
        * Google Drive
        * Logitech G HUB?
        * ToothFairy
* Shortcuts:
    * No hiding
    * Activity: right option (or...?)
    * No switch (?)
* License

[ubar]: https://ubarapp.com/

### [Witch][witch] ($)

Note: [buy direct][witch-buy-direct]

* -> System Settings -> Privacy &S -> Accessibility: allow
* Actions:
    * 1:
        * Cycle windows
        * Sort by app act, window act
        * Orientation: down
        * Don't list tabs (very slow with many tabs, also maybe unnecessary?)
        * Don't list apps without windows
        * Keyboard: `opt-tab`, `shift-opt-tab`
        * Show in menu bar
    * 2:
        * Minimize frontmost
        * Keyboard: `opt-Z`
        * Not in menu bar
    * 3:
        * Deminimize frontmost
        * Keyboard: `shift-opt-Z`
        * Not in menu bar
* Appearance:
    * No app names in vertical lists
* Advanced:
    * Show on display w/mouse (or frontmost?)
    * lower Delay (?) (0.1s (?)) (default is 0.2s)
    * Spring load?
    * No release to dismiss?
    * Do not list: uBar
* About:
    * License

[witch]: https://manytricks.com/witch/
[witch-buy-direct]: https://manytricks.com/blog/?p=4156

### [BetterTouchTool][btt] ($)

* -> System Settings -> Privacy &S:
    * Bluetooth: allow (?)
    * Accessibility: allow
    * Input Monitoring: allow
    * Screen Recording: allow (if necessary)
    * Automation:
        * Shortcuts Events: allow
        * System Events: allow (if there)
* Standard:
    * Basic:
        * General:
            * Launch on startup
            * No crash logs (?)
    * Touch Bar:
        * No icon
    * Window Snapping & Moving:
        * Snapping:
            * Disable (?)
        * Moving & Resizing:
            * Move: `ctrl-opt`
            * Resize: `ctrl-opt-cmd`
            * Bring to front
* Advanced:
    * Sync?
* License

[btt]: https://folivora.ai/

### [Rectangle][rectangle]

* -> System Settings -> Privacy &S -> Accessibility: allow
* Keys:
    * No key for LH/RH/CH/TH/BH, TL/TR/BL/BR, F3/C3/L3/F23/L23, 4ths, 6ths
    * No key for AlmostMax/MaxH, L/R/U/D
    * Maximize: `ctrl-opt-cmd-F`
    * Make Smaller: `ctrl-opt-cmd-down`
    * Make Larger: `ctrl-opt-cmd-up`
    * Center: `ctrl-opt-cmd-C`
    * Restore: `ctrl-opt-cmd-Z`
    * Next Display: `ctrl-opt-cmd-right`
    * Previous Display: `ctrl-opt-cmd-left`
* Snapping:
    * No snap by dragging (?)
* General:
    * Launch on login
    * Check for updates
    * Export (?)

[rectangle]: https://rectangleapp.com/

### [Moom][moom] ($)

Note: [buy direct][moom-buy-direct]

* -> System Settings -> Privacy &S -> Accessibility: allow
* General:
    * Launch on login
    * Don't show prefs on launch
    * Run as menu bar app
* Mouse:
    * (default delay: 0.1 sec)
    * Don't bring to front
* Custom:
    * Remove header
    * Remove others? (or just hotkeys?)
    * Menu Separator (if keeping others)
    * Add two:
        * Arrange windows
        * Trigger on 1 / 2 displays
        * Don't ignore obstructed
        * Save snapshot
        * Hotkey (`ctrl-opt-cmd-1` / `2`)
* Updates:
    * Auto check
* License
* (Exclude from uBar)

[moom]: https://manytricks.com/moom/
[moom-buy-direct]: https://manytricks.com/blog/?p=4156

### [Muzzle][muzzle]

* -> System Settings -> Privacy &S -> Accessibility: allow

[muzzle]: https://muzzleapp.com/

### [Amphetamine][amphetamine] (App Store)

* Don't show message
* Don't show in Dock
* General:
    * Quick-Start: right click
    * Launch at login
    * Hide in Dock
* Session Defaults:
    * Default Duration: 3 hours
    * Forced Sleep: End session
* (Triggers)
* Hotkeys:
    * Start/End: `ctrl-opt-cmd-A`
    * If active, end
* Appearance:
    * Icon: Eye (or Tea Kettle? Pill 2?)
    * Lower opacity?
    * Show time remaining
* Statistics:
    * Disable
    * Reset
* (Exclude from uBar)

[amphetamine]: https://apps.apple.com/us/app/amphetamine/id937984704

### [iStat Menus][istat] ($)

See [iStat Menus Setup][istat-setup]

[istat]: https://bjango.com/mac/istatmenus/
[istat-setup]: istat.md

### [Bartender][bartender] ($)

* -> System Settings -> Privacy &S
    * Accessibility: allow
    * Screen Recording: allow
    * Extensions:
        * Added extensions: allow
        * Quick Look: allow
* General:
    * Launch at login
    * Show hidden on hover
    * Bartender Bar: Use, Only w/Notch
    * Show divider
    * Spacing: Small
        * Requires a reboot to take effect
* Menu Bar Layout: (see bottom)
* Hot Keys:
    * Show all: `ctrl-opt-cmd-M`
* License

[bartender]: https://www.macbartender.com/

## General Utilities

### [Kap][kap]

* -> System Settings -> Privacy &S -> Screen Recording: allow
* General:
    * Highlight Clicks
* Plugins:
    * do-not-disturb
    * hide-clock
    * hide-desktop-icons
    * playback-speed
    * progress-bar
    * recording-name
    * reverse

[kap]: https://getkap.co/

### [Loom][loom]

[Download][loom-dl]

* -> System Settings -> Privacy &S
    * Microphone: allow
    * Camera: allow
    * Accessibility: allow
    * Screen Recording: allow
* Account:
    * Don't launch at startup

[loom]: https://www.loom.com/
[loom-dl]: https://www.loom.com/desktop

### [AppCleaner][appcleaner]

* -> System Settings -> Privacy &S:
    * App Management: deny (?)
* SmartDelete: on (?)
* Updates: check automatically

[appcleaner]: https://freemacsoft.net/appcleaner/

### [Suspicious Package][suspicious-package]

* -> System Settings -> Privacy &S:
    * Files and Folders: allow Desktop, Downloads (?)
        * But not Documents (?)
        * Request can be triggered from the menu bar:
            * Suspicious Package -> Review macOS Folder Privacy
    * Extensions:
        * Added extensions: allow
        * Quick Look: allow

[suspicious-package]: https://mothersruin.com/software/SuspiciousPackage/

### [The Unarchiver][unarchiver]

Download from main site or [App Store][unarchiver-app-store]

[unarchiver]: https://theunarchiver.com/
[unarchiver-app-store]: https://apps.apple.com/us/app/the-unarchiver/id425424353

### [NameChanger][namechanger]

* No history
* Auto update

[namechanger]: https://mrrsoftware.com/namechanger/

### ([HoudahSpot][houdahspot] ($))

* License

[houdahspot]: https://www.houdah.com/houdahSpot/

### [Disk Inventory X][disk-inventory-x]

* -> System Settings -> Privacy &S -> allow

[disk-inventory-x]: https://www.derlien.com/

### [DaisyDisk][daisydisk] ($)

Download from main site or [App Store][daisydisk-app-store]

* -> System Settings -> Privacy &S -> Full Disk Access: allow
* License
* Accept agreement

[daisydisk]: https://daisydiskapp.com/
[daisydisk-app-store]: https://apps.apple.com/app/daisydisk/id411643860

### [Wireshark][wireshark]

* Install ChmodBPF

[wireshark]: https://www.wireshark.org/

## Browsers

### [Chrome][chrome]

[Extensions][chrome-extensions]

See [Chrome Setup][chrome-setup]

* -> System Settings -> Privacy &S:
    * (after e.g. meet.new and sharing)
    * Microphone: allow
    * Camera: allow
    * Accessibility: allow (if there)
    * Screen Recording: allow

[chrome]: https://www.google.com/chrome/
[chrome-extensions]: https://chromewebstore.google.com/category/extensions
[chrome-setup]: ../chrome.md

### [Firefox][firefox]

* Not primary

[Add-ons][firefox-add-ons]

[Extensions][firefox-extensions]

See [Firefox Setup][firefox-setup]

[firefox]: https://www.mozilla.org/en-US/firefox/new/
[firefox-add-ons]: https://addons.mozilla.org/en-US/firefox/
[firefox-extensions]: https://addons.mozilla.org/en-US/firefox/extensions/
[firefox-setup]: ../firefox.md

## Messaging and VC

### [Franz][franz]

* -> System Settings -> Privacy &S:
    * Bluetooth: allow (?)
    * Microphone: allow
    * Camera: allow
    * Screen Recording: allow (?)
* Account
* General:
    * Don't launch on start
    * Don't keep in background
    * Don't show in system tray
* Language:
    * No spell checking?
* Services:
    * Messenger, Hangouts, Telegram, Skype, Discord, Slack, Steam

[franz]: https://meetfranz.com/

### ([Telegram][telegram]? (in Franz instead?))

[telegram]: https://telegram.org/

### ([Signal][signal]?)

[signal]: https://signal.org/

### [Skype][skype] (in Franz instead?)

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow

[skype]: https://www.skype.com/en/

### ([Discord][discord]? (in Franz instead?))

[discord]: https://discord.com/

### [Slack][slack] (optional App Store; in Franz instead?)

[Download - direct][slack-dl]

[Download - App Store][slack-app-store]

See [Slack Setup][slack-setup]

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow
    * Screen Recording: allow
    * Accessibility: allow (if there)

[slack]: https://slack.com/
[slack-dl]: https://slack.com/downloads/
[slack-app-store]: https://apps.apple.com/app/slack/id803453959
[slack-setup]: ../slack.md

### [Zoom][zoom]

[Download][zoom-dl]

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow
    * Accessibility: deny (if there) (?)
    * Screen Recording: allow (if necessary)
* General:
    * Don't remind me
* Share Screen:
    * Don't silence notifications (if using Muzzle) [?]
* Background & Effects:
    * (Background)

[zoom]: https://www.zoom.com/en/products/virtual-meetings/
[zoom-dl]: https://zoom.us/download#client_4meeting

## Media

### [Spotify][spotify]

* Autoplay: on
* Audio Quality:
    * Streaming quality: High (?) (Very high?)
    * Download: Very high (?)
    * Auto adjust: on
    * Normalize volume: on
* Display:
    * Don't show the now-playing panel
    * Don't show announcements (?)
    * Don't show friend activity (?)
* Social:
    * Don't publish new playlists
    * Don't share listening activity
    * Don't show recently played (?)
* Startup: No

[spotify]: https://www.spotify.com/us/

### [Amazon Music][amazon-music]

(Mac app was discontinued, but this link still works)

[Download][amazon-music-dl]

* Advanced:
    * Don't launch on startup

[amazon-music]: https://www.amazon.com/music
[amazon-music-dl]: https://www.amazon.com/gp/dmusic/desktop/downloadPlayer/ref=dmsp_adp_ddp

### [Apple Music][apple-music]

* Account -> log in
* General:
    * No notifications
* Playback
    * Sound Check
* Files
    * Don't copy files?
* Advanced
    * Automatically update artwork (?)

[apple-music]: https://www.apple.com/apple-music/

### [Kindle][kindle]

(Apparently now only on the App Store, in a less-featured version???)

* -> System Settings -> Privacy &S -> Accessibility: allow (if there)
* No dictionary
* No crash reports (?)
* No auto updates?
* (rename and add shared libraries)
* (download books)

[kindle]: https://www.amazon.com/kindle-dbs/fd/kcp

### [Kobo][kobo]

* Log in
* (download books)

[kobo]: https://www.kobo.com/us/en/p/desktop

### [XnViewMP][xnviewmp]

* -> System Settings -> Privacy &S -> Files and Folders: allow as necessary
* Startup Wizard:
    * No anonymous logs
* General:
    * General:
        * Check for updates: Weekly (?) (default is Daily)
    * Startup:
        * Start with file: Viewer (?)
        * Startup directory: Last (default) (?)
* Interface:
    * Interface:
        * Purge on exit?
    * Tabs:
        * No closing last tab exits?
    * Shortcuts:
        * Viewer:
            * Random file: Custom (0 (?))
    * Keyboard:
        * ESC closes: Viewer only (?)
* Catalog:
    * Catalog:
        * Disable Catalog/caching?

[xnviewmp]: https://www.xnview.com/en/xnviewmp/

## Documents and Productivity

### [Pages][pages] ([App Store][pages-app-store])

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No link style?
    * No smart quotes?
    * Replacements on (?)

[pages]: https://support.apple.com/pages
[pages-app-store]: https://apps.apple.com/us/app/pages/id409201541?mt=12

### [Numbers][numbers] ([App Store][numbers-app-store])

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No link style?
    * No smart quotes?
    * Replacements on (?)

[numbers]: https://support.apple.com/numbers
[numbers-app-store]: https://apps.apple.com/us/app/numbers/id409203825?mt=12

### [Keynote][keynote] ([App Store][keynote-app-store])

* General:
    * Author
* Slideshow:
    * No exit after last
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No link style?
    * No smart quotes?
    * Replacements on (?)

[keynote]: https://support.apple.com/keynote
[keynote-app-store]: https://apps.apple.com/us/app/keynote/id409183694?mt=12

### [Microsoft 365 / Office][ms-office]

[ms-office]: https://www.office.com/

### [OneNote][onenote] (App Store)

[Download][onenote-dl]

* -> System Settings -> Privacy &S -> Extensions:
    * Added extensions: allow
    * Sharing: allow
* -> OneNote Web Clipper in Chrome (?)
* Spelling:
    * No auto spelling
    * No check spelling
    * No auto caps
* Privacy:
    * Don't send data
* Quick Access Toolbar:
    * Just Undo/Redo
* Printing:
    * Double-sided: on (?)

[onenote]: https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app
[onenote-dl]: https://www.onenote.com/download

### ([Omnigraffle][omnigraffle]) ($)

[omnigraffle]: https://www.omnigroup.com/omnigraffle

### ([Monodraw][monodraw]) ($)

[monodraw]: https://monodraw.helftone.com/

### ([MindNode][mindnode]) (App Store)

[mindnode]: https://www.mindnode.com/

### [Sequel Pro][sequel-pro]

* Auto-update

[sequel-pro]: https://www.sequelpro.com/

## Text Editors

### [MacVim][macvim]

* Check for updates

[macvim]: https://macvim.org/

### [Bluefish][bluefish]

* -> System Settings -> Privacy &S -> allow

Or, if not available:

* -> Applications -> Bluefish -> right-click -> Open

[bluefish]: https://bluefish.openoffice.nl/index.html

### [VSCode][vscode]

[Extensions][vscode-extensions]

See the [VSCode Setup][vscode-setup] directory

* Create symlink:

```shell
mkdir -p ~/bin
ln -s '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code' \
    ~/bin/
```

[vscode]: https://code.visualstudio.com/
[vscode-extensions]: https://marketplace.visualstudio.com/VSCode
[vscode-setup]: ../vscode/

### ([Sublime Text][sublime-text])

[sublime-text]: https://www.sublimetext.com/

### ([PyCharm][pycharm]) ($/free)

[pycharm]: https://www.jetbrains.com/pycharm/

### ([GoLand][goland]) ($)

[goland]: https://www.jetbrains.com/go/

### ([IntelliJ][intellij]) ($/free)

See [IntelliJ Setup][intellij-setup]

[intellij]: https://www.jetbrains.com/idea/
[intellij-setup]: ../intellij.txt

### (other JetBrains and/or language-specific IDEs)

## Command-line Related

### [iTerm2][iterm2]

* -> System Settings -> Privacy &S:
    * (after e.g. find or chmod)
    * (Contacts: allow)
    * (Calendars: allow)
    * (Reminders: allow)
    * (Photos: allow)
    * Files and Folders -> Google Drive: allow
    * Full Disk Access: allow
    * Accessibility: allow (if there)
    * Automation -> Google Chrome: allow
        * (after clicking a link)
    * App Management: deny (?)
* General:
    * Closing:
        * Disable confirmations on shutdown, etc.
    * tmux:
        * Bury tmux session (?)
* Profiles:
    * Colors:
        * Preset (Tango Dark/Light)
    * Text:
        * Font? (default is 12pt Monaco)
    * Terminal:
        * Unlimited scrollback (?)
        * Silence bell (?)
    * Session:
        * Always prompt before closing (?)
* Advanced:
    * Mouse:
        * Scroll wheel sends arrow keys when in alternate screen mode: Yes

When done, export (General -> Settings) (?)

[iterm2]: https://iterm2.com/

### [Xcode][xcode] (App Store)

[Download - App Store][xcode-app-store]

* incl. additional components, command-line tools
* `xcode-select --install` after OS upgrade
* -> System Settings -> Privacy &S -> Accessibility: allow

[xcode]: https://developer.apple.com/xcode/
[xcode-app-store]: https://apps.apple.com/us/app/xcode/id497799835

### [Homebrew][homebrew]

Run from the [Unix Setup][unix-setup] directory:

```shell
umask 022
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# on Apple Silicon (but see dotfiles)
eval "$(/opt/homebrew/bin/brew shellenv)"
brew update
# brew outdated
for i in $(cat packages.txt | sed 's/ *#.*$//' | grep -v '^$'); do
    brew install "$i"
done
# run again with -q to find unavailable packages
brew upgrade
brew cleanup
brew doctor
umask 077
```

* Add `/usr/local/bin/bash` / `/opt/homebrew/bin/bash` to `/etc/shells` and
  `chsh -s "$(brew --prefix)/bin/bash"`?
    * on 10.15+ (Catalina), `chsh -s /bin/bash` if not doing the above, and add
      `export BASH_SILENCE_DEPRECATION_WARNING=1` to `~/.bash_profile`
* Restart shell (fixes problem with `pybase`)

[homebrew]: https://brew.sh/

### General Setup

See the [Unix Setup][unix-setup] directory

* Dotfiles, incl. dotfile and `~/.to_back_up` links
* Add `~/.to_back_up` to Google Drive (backup) and (partly) SpiderOak One
* Rest of the [Unix Setup][unix-setup] directory
* Add hostname to `127.0.0.1` in `/etc/hosts`?

### SSH

* Use the macOS keychain:

    ```shell
    cat >> ~/.ssh/config <<EOF
    Host *
        UseKeychain yes
    EOF
    ```

* Consolidate and order the config file from most to least specific
* Add the keys to the agent, and the passphrases to the keychain:

    ```shell
    for i in ~/.ssh/*_{dsa,ecdsa,ed25519,rsa}; do
        ssh-add --apple-use-keychain "$i"  # absolute path
    done
    ```

* Add `~/.ssh` to SpiderOak One (depending)

### GPG

#### Option 1 (brew)

```shell
umask 022
brew install gnupg pinentry-mac
umask 077
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" >> \
    ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
```

* Follow directions in [Unix Account Setup][unix-account-setup]
* Install GPG Suite, for GUI
    * (If desired; updates may overwrite config files)
    * (May not automatically pick up new keys?)
* (Put our lines at the top of the config files, with a blank before the Suite
  ones?)

#### Option 2 ([GPG Suite][gpg-suite])

```shell
umask 022
brew uninstall --force gnupg pinentry pinentry-mac
umask 077
```

* Install GPG Suite
* Create a key
    * Use RSA/RSA 4096, no expiration, the same name and email as
      for git, and comment `HOSTNAME -> GitHub`
    * See [Unix Account Setup][unix-account-setup]

[gpg-suite]: https://gpgtools.org/

#### Either way

* Sign something (e.g. `gpg -s -u KEY_ID`, then mash keys and hit `ctrl-d`);
  check 'Save in Keychain' (or click 'Always Allow', whichever appears)
* -> System Settings -> GPG Suite -> Settings: (Default Key)
* (Or if not using GPG Suite at all, optionally add `default-key KEY_ID` to
  `gpg.conf` in `~/.gnupg`)

### Permissions

(in most cases)

```shell
chmod -R go-rwx ~
chmod -h go-rwx ~/.[a-zA-Z0-9]* ~/.ssh/* ~/.gnupg*/* ~/.m2/* \
    ~/Library/Application\ Support/Code/User/* \
    ~/.vim/autoload/pathogen.vim \
    ~/bin/*
```

[unix-setup]: ../unix-common/
[unix-account-setup]: ../unix-common/account-setup.psh

## Gaming

### [Steam][steam]

[Download][steam-dl]

* -> System Settings -> Privacy &S -> Accessibility: allow
* Account
* Interface:
    * Don't run on startup
* Controller:
    * General:
        * Add
        * Prefs -> lower brightness (down to 1/3)
* (install games)

[steam]: https://store.steampowered.com/
[steam-dl]: https://store.steampowered.com/about/

### [Epic Games Launcher][epic-games]

[Download][epic-games-dl]

* Don't run on startup
* (install games)

[epic-games]: https://store.epicgames.com/en-US/
[epic-games-dl]: https://store.epicgames.com/en-US/download

### [GOG Galaxy][gog]

[Download][gog-dl]

* General:
    * Don't launch at startup
    * Starting page: Owned games
* (install games)

[gog]: https://www.gog.com/en/
[gog-dl]: https://www.gog.com/galaxy

### ([EA app][ea-app])

[ea-app]: https://www.ea.com/ea-app

### [itch.io][itch-app]

[Download][itch-app-dl]

[itch-app]: https://itch.io/
[itch-app-dl]: https://itch.io/app

## Windows Compatibility

### [CrossOver][crossover] ($)

* Updates:
    * Check
    * Log and report
* License
* (install programs, e.g. Steam, IrfanView w/plugins)

[crossover]: https://www.codeweavers.com/crossover

## List Orders

### Menu Bar Order

(from L to R, with Bartender settings if not default)

* New Items
* (Docker)
* Spotlight (Always Hidden)
* Focus
* Amphetamine
* Muzzle (Hidden)
* Moom (Hidden)
* Rectangle (Hidden)
* BetterTouchTool (Hidden)
* Witch (Hidden)
* Dropbox
* Google Drive
* SpiderOak One
* other VPNs
* PIA
* WiFi
* Now Playing (Hidden (?))
* ToothFairy
* SoundSource: apps, output, input, main
    * (apps include e.g. music apps, browsers, messaging and VC apps)
* Balance Lock (Hidden)
* Blue Sherpa
* Logitech G HUB (Hidden)
* YubiSwitch (Hidden)
* iStat Menus: CPU, Mem, SSD, Net, Sen
* iStat Menus: Battery(s), Time
* Fast user switching (Hidden?)
* Bartender
* (Control Center, Clock)

### Dock Order

(all -> keep in dock):

* Finder
* Siri?
* Launchpad?
* Dashboard? (drag to dock)
* System Settings
* other VPNs
* (Kobo)
* (Kindle)
* Amazon Music, Spotify, etc.
* (Skype), Zoom, Franz, Slack
* OneNote
* Chrome, Firefox
* VSCode / Sublime Text / PyCharm / GoLand / IntelliJ / etc.
* (TextEdit) / Bluefish / MacVim / etc.
* iTerm
* (Omnigraffle)
* Pages?
* Numbers?
* Keynote?
* (Steam)
* (Epic)
* (GOG Galaxy)
* (EA app)
* (itch)
* (CrossOver)
* (CrossOver apps)

### uBar App Order

* Finder
* Android File Transfer
* Kobo
* Kindle
* Apple Music, Amazon Music, Spotify, etc.
* Skype, Zoom, Franz, Slack

Telegram? (in Franz?)
Signal?
Discord? (in Franz?)

* OneNote
* Chrome, Firefox, Safari
* VSCode, Sublime Text, PyCharm, GoLand, IntelliJ, Xcode, etc.
* TextEdit, Bluefish, MacVim, etc.
* iTerm
* Docker
* Wireshark
* (Omnigraffle)
* Pages, Numbers, Keynote
* XnViewMP
* Preview
* Calculator
* Blue Sherpa
* Steam
* Epic
* GOG Galaxy
* (EA app)
* itch
* CrossOver
* CrossOver apps

### Moom Window Placement

## Re-check System Settings

After all of the software is installed and set up, confirm that the relevant
System Settings sections are correct:

* Notifications
* General -> Login Items
* Privacy & Security

## OS Version Notes

[Catalina Notes][catalina-notes]

[Apple Silicon Notes][apple-silicon-notes]

[catalina-notes]: catalina.txt
[apple-silicon-notes]: m2.txt

## Machine Migration

* Copy files, including:
    * All users, including `/Users/Shared`; don't forget:
        * Homedir stuff, main files
        * SSH/GPG keys, `known_hosts`
        * Kubernetes contexts (`~/.kube/config`)
        * Python virtualenvs
        * History: shell, Python, iPython, etc.
        * Local config (shell, SSH, vim, etc.; see
          [this script][dotfiles-install])
    * Check `/tmp`, `/usr/tmp`, `$TMPDIR`
    * Check `/etc` and `/usr/local/etc` / `/opt/homebrew/etc`
    * Check anything non-Homebrew in `/opt`
* Copy browser tabs and windows
* Copy non-cloud game saves
* Copy containers (if applicable)
* Check for other applications
* Check VSCode, etc. settings against this repo
* Export and copy iStat, Moom, Rectangle, iTerm, etc. settings (?)
* Save and copy desktop, Meet, Zoom, etc. backgrounds

This is also a good time to export browser bookmarks to have a backup.

[dotfiles-install]: https://github.com/ocsw/dotfiles/blob/master/INSTALL.sh

## Machine Decommissioning

* Remove from iCloud Devices, App Store
* Remove Apple ID
* Log out of SpiderOak, Google Drive, Dropbox, etc.
* Log out of any LastPass, etc. apps
* Chrome, other browsers:
    * Log out of Lastpass, etc.
    * Log out of comms, including GMail, GCal, Discord, Messenger, FB, etc.
    * Log out of Pinboard
    * Log out of profile(s)
    * Close tabs and windows
    * Erase data (?)
* Log out of other comms, e.g. Slack, Franz, Zoom, Skype, etc.
* Log out of OneNote
* Remove SSH/GPG keys, possibly `known_hosts`
* Remove VSCode, etc. sync
* Deauthorize Kindle
* Log out of Spotify, etc.
* Log out of Steam, etc.
* Remove repos (?)
* Remove containers (if applicable) (?)
* Remove other data (?) (See also [Migration section][migration])
* Remove shell, etc. history (?)
* Turn off any remote printing / scanning
* Log out of VPNs
* Remove WiFi passwords (?)

[migration]: #machine-migration
