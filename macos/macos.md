# macOS Setup

NOTE: most of this has to be done separately for each user account
(e.g., main and presentations)

## OS Settings

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
* Save the FileVault Recovery Key

See also the [Re-check System Settings](#re-check-system-settings) section, below

[macos-system-settings]: macos-system-settings.md

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
    * Show all (except `Recents` (depending), `Shared` (?), `Movies` (?))
    * Note `-` on HDs
    * (When dragging things out of Locations, they get turned off, but they can
      be turned back on here)
* Advanced:
    * Remove after 30 days
* Favorites in sidebar (in order):
    * `AirDrop`? (or leave in Locations)
    * `Dropbox`? (or leave in Locations)
    * `Google Drive`? (or leave in Locations)
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
* (`cmd-shift-.` for dotfiles)

## Networking

### ([PIA][pia])

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

### [Logitech G HUB][g-hub] (w/G502 mouse, C920 webcam)

See [G HUB Setup][g-hub-setup]

* -> System Settings -> Privacy & Security -> Security: allow (x2) \[?]
* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Logitech G HUB:
        * (w/PRO X headset (DAC))
        * Driver Extension:
            * Blue Voice: on
            * G HUB HID: on
        * (may require rebooting)
    * Privacy & Security:
        * Location Services: deny
        * Files & Folders:
            * Removable Volumes: deny (?)
        * Accessibility: allow
        * Bluetooth: allow
        * Camera: allow (after opening C920 settings)
        * Microphone: allow (after opening C920 settings)
        * Screen & System Audio Recording: deny (?)

[g-hub]: https://www.logitechg.com/en-us/software/ghub
[g-hub-setup]: ../g-hub.md

### [YubiSwitch][yubiswitch]

[Download][yubiswitch-dl]

* -> System Settings -> Privacy & Security -> Accessibility: allow
* No enable on sleep
* Auto off
* Preferences:
    * Hotkey ([`ctrl-opt-cmd-Y`][hotkeys-ctrl-opt-cmd])
    * ProductID
        * -> `ioreg -p IOUSB -l -w 0 -x | grep YubiKey -A12 | grep idProduct`
        * `0x407` for nano
    * (VendorID)
        * -> `ioreg -p IOUSB -l -w 0 -x | grep YubiKey -A12 | grep idVendor`
        * `0x1050` for nano
    * Switch off after 5 sec
    * Start on login

[yubiswitch]: https://github.com/pallotron/yubiswitch
[yubiswitch-dl]: https://github.com/pallotron/yubiswitch/releases/

### Other Bluetooth Devices

e.g. headphones, controllers

### [ToothFairy][toothfairy] ($) (App Store)

[Download - App Store][toothfairy-app-store]

* -> System Settings:
    * Menu Bar -> Menu Bar Controls:
        * Bluetooth: off
    * Privacy & Security:
        * Bluetooth: allow
* Add devices:
    * Icon
    * Show battery
    * Hotkey (?) (e.g. [`ctrl-opt-cmd-H`][hotkeys-ctrl-opt-cmd])
    * Advanced:
        * Improve sound quality (depending)
* Launch at login
* Hide Dock icon
* (Exclude from uBar)

[toothfairy]: https://c-command.com/toothfairy/
[toothfairy-app-store]: https://apps.apple.com/us/app/toothfairy/id1191449274?mt=12

### macOS A/V/Screen Menu Bar Icons

(e.g. open Sound->Input in System Settings; only have to do this on one of them)

* Mic Mode: Standard (especially for music production)

### [Better OSD][better-osd-app-store] (App Store)

(For macOS 26 Tahoe and up)

* Appearance: Classic
* General:
    * Launch at Login: on

[better-osd-app-store]: https://apps.apple.com/us/app/better-osd/id6752903119?mt=12

### [Balance Lock][balance-lock] (optional App Store)

[Download - direct][balance-lock] (Download link is at the bottom)

([Download - App Store][balance-lock-app-store])

* Launch on login
* Preferences:
    * Automatically launch
    * No notifications

[balance-lock]: https://www.tunabellysoftware.com/balance_lock/
[balance-lock-app-store]: https://apps.apple.com/us/app/balance-lock/id1019371109?mt=12

### ([SoundSource][soundsource] ($))

[soundsource]: https://rogueamoeba.com/soundsource/

#### ACE Helper

Note: This is apparently no longer necessary as of version 5.7.0.  ARK is used instead.

The ACE helper requires a reboot to install.  On Apple Silicon, it also requires booting into the Recovery Environment and doing one of the following:

* Setting "Reduced Security" with "Allow user management" in the Startup
  Security Utility, or
* Running this command in a Terminal: `spctl kext-consent add 7266XEXAPM`

(See: [first method][soundsource-first], [second method][soundsource-second])

[soundsource-first]: https://rogueamoeba.com/support/knowledgebase/?showArticle=ACE-StepByStep&product=SoundSource
[soundsource-second]: https://rogueamoeba.com/support/knowledgebase/?showArticle=ACE-AlternateInstall&product=SoundSource

#### Settings

* -> System Settings -> Privacy & Security:
    * Accessibility: allow (after Super Volume Keys)
    * Bluetooth: allow
    * Microphone: allow Audio Routing Kit (ARK) (if present)
    * Screen & System Audio Recording:
        * System Audio Recording Only:
            * Allow Audio Routing Kit (ARK) (if present)
* General:
    * Start at login
    * Hotkey ([`ctrl-opt-cmd-S`][hotkeys-ctrl-opt-cmd])
* Audio:
    * Super Volume Keys
* Appearance:
    * Follow Accent Color
    * Show all meters (?)
* License

### [Signal Shifter][signal-shifter] (App Store)

[Download - App Store][signal-shifter-app-store]

* -> System Settings -> Privacy & Security -> Bluetooth: allow
* General
    * Open at Login: on
* Notifications:
    * Default low batt notif: Below 20% (?)

[signal-shifter]: https://vespen.github.io/signal-shifter/
[signal-shifter-app-store]: https://apps.apple.com/us/app/signal-shifter/id6446061552?mt=12

### ([Mic Drop][mic-drop] (App Store))

[Download - App Store][mic-drop-app-store]

* General:
    * Launch at login

[mic-drop]: https://getmicdrop.com/
[mic-drop-app-store]: https://apps.apple.com/us/app/mic-drop-mute-manager/id1489816366?mt=12

### [Android File Transfer][android-ft]

(No Mac version anymore?)

[android-ft]: https://www.android.com/filetransfer/

### Printers

### Scanners

## Backup and Sync

### [SpiderOak One][spideroak-one]

[Download][spideroak-one-dl]

* -> System Settings -> Privacy & Security -> Security: allow
* -> System Settings:
    * Network -> Firewall -> Options...: allow?
    * Privacy & Security:
        * Files & Folders:
            * Allow Desktop, Documents, Downloads (if necessary)
            * Deny Network, Removable (?)
        * Media & Apple Music: allow (after setup)
        * Photos: allow (full access; after setup)
        * Automation -> System Events: allow
        * Local Network: allow (if present) (?)
* Log in
* General:
    * Launch minimized?
    * Don't show splash screen
    * Launch at startup
* Network:
    * Allow LAN-Sync (?)
* remove Hive symlink from desktop
* Backup (all from homedir; watch out for changes disappearing from the UI
  before you can save???):
    * Folders:
        * `.gnupg` (except `*.conf`), (`.gnupg_pre_2.1` except `*.conf`),
          `.ssh`
        * `Books`, `Desktop`, `Documents`, `Downloads`, `install`, `Movies`,
          `Music`, `Pictures`, `scraps`, (Hive)
        * (other data, install, etc.)
        * \[work: only `Books`, `Music`, `Pictures`]
    * Files:
        * `.to_back_up/*`, especially `*.local`, except for history files and
          `.hstr_favorites`
        * \[work: skip]

[spideroak-one]: https://spideroak.one/
[spideroak-one-dl]: https://spideroak.one/download

### [Google Drive][google-drive]

[Download][google-drive-dl]

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Google Drive:
        * File Provider: on
    * Privacy & Security:
        * Files & Folders:
            * Allow Desktop, Documents, Downloads (if necessary)
            * Deny Network (?)
        * Media & Apple Music: allow (after setup)
        * Photos: allow (full access; after setup)
        * Accessibility: deny (?)
* Sign in
* Start syncing
* Drive folders (all from homedir):
    * `.to_back_up`, `Books`, `Music`, `scraps`, `wip`
    * (+ more depending on contents / context)
    * \[work: add `Desktop`, `Documents`, `Downloads`]
* Photos folder: `Pictures` \[incl. for work?]
* Preferences:
    * My Mac:
        * Computers -> change name to match hostname
    * Google Drive:
        * Stream files (?)
    * Settings:
        * Google Photos:
            * Original quality
        * Launch on login
        * No hotkey
        * Don't send diagnostics?
        * Don't prompt to back up devices (?)
* -> Finder sidebar position

[google-drive]: https://workspace.google.com/products/drive/
[google-drive-dl]: https://workspace.google.com/products/drive/#download

### [Dropbox][dropbox]

[Download][dropbox-dl]

* -> System Settings:
    * Network -> Firewall -> Options...: allow?
    * General -> Login Items & Extensions -> Extensions -> Dropbox:
        * File Provider:
            * Dropbox: on
            * Dropbox Finder Extension: off (?)
        * Sharing: on
    * Privacy & Security:
        * Location Services: deny
        * Accessibility: allow
* General:
    * Open on startup
* Accounts
* Backups:
    * Ask to backup external drives: off (?)
    * Camera Uploads: off (?)
* Network:
    * LAN sync: off (?)
* -> Finder sidebar position

[dropbox]: https://www.dropbox.com/
[dropbox-dl]: https://www.dropbox.com/install

## UI Tools and Tweaks

[hotkeys-mod]: hotkeys.md#modifiers-only

### [uBar][ubar] ($)

* -> System Settings:
    * Desktop & Dock:
        * Dock:
            * Dock position
            * Autohide the Dock: on
    * Privacy & Security:
        * Calendars: allow (if present)
        * Contacts: allow (if present)
        * Full Disk Access: allow
        * Media & Apple Music: allow (if present)
        * Photos: allow (full access (?); if present)
        * Reminders: allow (if present)
        * Accessibility: allow
        * Automation:
            * Finder: allow
            * Spotify: allow
        * Screen & System Audio Recording: allow
* General:
    * Pinning: all if not ultrawide, else bottom only
    * Display: Main (?)
    * Open on Login
    * Check for updates
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
        * ToothFairy
* Shortcuts:
    * No hiding
    * Activity: [right `opt`][hotkeys-mod] (or...?)
    * No switch (?)
* License

[ubar]: https://ubarapp.com/

### [Witch][witch] ($)

Note: [buy direct][witch-buy-direct]

* -> System Settings -> Privacy & Security -> Accessibility: allow
* Enable
* Actions:
    * 1:
        * Cycle windows
        * Sort by app act, window act
        * Orientation: down
        * Don't list tabs (very slow with many tabs, also maybe unnecessary?)
        * Don't list apps without windows
        * Keyboard: [`opt-tab` / `shift-opt-tab`][hotkeys-opt]
        * Show in menu bar
    * 2:
        * Minimize frontmost
        * Keyboard: [`opt-Z`][hotkeys-opt]
        * Not in menu bar
    * 3:
        * Deminimize frontmost
        * Keyboard: [`shift-opt-Z`][hotkeys-opt]
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
[hotkeys-opt]: hotkeys.md#option-opt--

### [Rectangle][rectangle]

* -> System Settings -> Privacy & Security -> Accessibility: allow
* Keys:
    * No key for LH/RH/CH/TH/BH, TL/TR/BL/BR, F3/C3/L3/F23/C23/L23, 4ths, 6ths
    * No key for AlmostMax/MaxH, L/R/U/D
    * Maximize: [`ctrl-opt-cmd-F`][hotkeys-ctrl-opt-cmd]
    * Make Smaller: [`ctrl-opt-cmd-down`][hotkeys-ctrl-opt-cmd]
    * Make Larger: [`ctrl-opt-cmd-up`][hotkeys-ctrl-opt-cmd]
    * Center: [`ctrl-opt-cmd-C`][hotkeys-ctrl-opt-cmd]
    * Restore: [`ctrl-opt-cmd-Z`][hotkeys-ctrl-opt-cmd]
    * Next Display: [`ctrl-opt-cmd-right`][hotkeys-ctrl-opt-cmd]
    * Previous Display: [`ctrl-opt-cmd-left`][hotkeys-ctrl-opt-cmd]
* Snapping:
    * No snap by dragging (?)
* General:
    * Launch on login
    * Check for updates
    * Export (?)

[rectangle]: https://rectangleapp.com/

### [BetterTouchTool][btt] ($)

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> BetterTouchTool:
        * File Provider: off (?)
    * Privacy & Security:
        * Location Services: deny
        * Accessibility: allow
        * Automation:
            * Shortcuts Events: allow
            * System Events: allow (if present)
        * Bluetooth: allow (?)
        * Focus: deny (?)
        * Input Monitoring: allow
        * Screen & System Audio Recording: allow (if necessary)
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
            * Move: [`ctrl-opt`][hotkeys-mod]
            * Resize: [`ctrl-opt-cmd`][hotkeys-mod]
            * Bring to front
* Advanced:
    * Sync?
* License

[btt]: https://folivora.ai/

### [Moom][moom] ($)

Note: [buy direct][moom-buy-direct]

* -> System Settings -> Privacy & Security -> Accessibility: allow
* General Settings:
    * Don't bring to front
    * Check for updates
    * Launch on login
    * Don't show settings on launch
    * Run as menu bar app
* Palette:
    * (default Delay: 0.1 sec)
* Custom:
    * Add two:
        * Layout
        * Hotkey ([`ctrl-opt-cmd-1` / `ctrl-opt-cmd-2`][hotkeys-ctrl-opt-cmd])
        * Don't narrow to unobstructed windows
        * Apply when switching to 1 / 2 display(s)
        * Save/Update Layout
* License

[moom]: https://manytricks.com/moom/
[moom-buy-direct]: https://manytricks.com/blog/?p=4156

### [Hammerspoon][hammerspoon]

[GitHub][hammerspoon-github]

Install (manually or) via [Homebrew](#homebrew)

* -> System Settings -> Privacy & Security -> Accessibility: allow
* Preferences:
    * Launch at login
    * Check for updates
    * Don't send crash data?

The [config][hammerspoon-config] is in the dotfiles repo and is installed by the [dotfiles install script][dotfiles-install].  There is also a list of [references for writing config files][hammerspoon-refs] in the dotfiles repo.

[hammerspoon]: https://www.hammerspoon.org/
[hammerspoon-github]: https://github.com/Hammerspoon/hammerspoon
[hammerspoon-config]: https://github.com/ocsw/dotfiles/tree/main/hammerspoon
[hammerspoon-refs]: https://github.com/ocsw/dotfiles/blob/main/hammerspoon/hammers/references.md

### [Muzzle][muzzle]

* -> System Settings -> Privacy & Security -> Accessibility: allow

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
    * Start/End: [`ctrl-opt-cmd-A`][hotkeys-ctrl-opt-cmd]
    * If active, end
* Appearance:
    * Icon: Eye (or Tea Kettle? Pill 2?)
    * Lower opacity?
    * Show time remaining
* Statistics:
    * Disable
    * Reset

[amphetamine]: https://apps.apple.com/us/app/amphetamine/id937984704?mt=12

### [iStat Menus][istat] ($)

See [iStat Menus Setup][istat-setup]

[istat]: https://bjango.com/mac/istatmenus/
[istat-setup]: istat.md

### [Bartender][bartender] ($)

* -> System Settings -> Privacy & Security:
    * Location Services: deny
    * Accessibility: allow
    * Screen & System Audio Recording: allow
* General:
    * Start at login
    * Layout Mode: On-Demand (?)
    * Show hidden on hover
    * Bartender Bar: Use, Only w/Notch
    * Show divider
    * Spacing: Small
        * Requires a reboot to take effect
* Menu Bar Layout: (see bottom)
* Hot Keys:
    * Show all: [`ctrl-opt-cmd-M`][hotkeys-ctrl-opt-cmd]
* License

[bartender]: https://www.macbartender.com/

## General Utilities

### [Kap][kap]

* -> System Settings -> Privacy & Security:
    * Location Services: deny
    * Screen & SA Recording: allow
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

* -> System Settings -> Privacy & Security:
    * Accessibility: allow
    * Camera: allow
    * Microphone: allow
    * Screen & System Audio Recording: allow
* Account:
    * Don't launch at startup

[loom]: https://www.loom.com/
[loom-dl]: https://www.loom.com/desktop

### [AppCleaner][appcleaner]

* -> System Settings -> Privacy & Security:
    * Full Disk Access: allow
    * App Management: deny (if present) (?)
* SmartDelete: on (?)
* Updates: check automatically

[appcleaner]: https://freemacsoft.net/appcleaner/

### [Suspicious Package][suspicious-package]

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Suspicious Package:
        * Quick Look: on
    * Privacy & Security:
        * Files & Folders:
            * Allow Desktop, Downloads (?)
            * Deny Documents (?)
            * (Request can be triggered from the menu bar:)
                * Suspicious Package -> Review macOS Folder Privacy

[suspicious-package]: https://mothersruin.com/software/SuspiciousPackage/

### [The Unarchiver][unarchiver] (optional App Store)

Download from (main site or) [App Store][unarchiver-app-store]

[unarchiver]: https://theunarchiver.com/
[unarchiver-app-store]: https://apps.apple.com/us/app/the-unarchiver/id425424353?mt=12

### [NameChanger][namechanger]

* No history
* Auto update

[namechanger]: https://mrrsoftware.com/namechanger/

### ([HoudahSpot][houdahspot] ($))

* License

[houdahspot]: https://www.houdah.com/houdahSpot/

### [Disk Inventory X][disk-inventory-x]

* -> System Settings -> Privacy & Security -> Security: allow
* -> System Settings -> Privacy & Security:
    * (run first)
    * Calendars: allow (if present)
    * Contacts: allow (if present)
    * Files & Folders: allow Desktop, Documents, Downloads
        * (also popups for Dropbox, Google Drive)
        * (or allow Full Disk Access?)
    * Full Disk Access: allow?
    * Media & Apple Music: allow (if present)
    * Photos: allow (full access (?); if present)
    * Reminders: allow (if present)

[disk-inventory-x]: https://www.derlien.com/

### [DaisyDisk][daisydisk] ($) (optional App Store)

Download from main site (or [App Store][daisydisk-app-store])

* -> System Settings -> Privacy & Security:
    * Calendars: allow (if present)
    * Contacts: allow (if present)
    * Full Disk Access: allow (?) (or, allow as necessary in F&F/popups)
    * Media & Apple Music: allow (if present)
    * Photos: allow (full access (?); if present)
    * Reminders: allow (if present)
* License
* Accept agreement

[daisydisk]: https://daisydiskapp.com/
[daisydisk-app-store]: https://apps.apple.com/us/app/daisydisk/id411643860?mt=12

### [Wireshark][wireshark]

* Install ChmodBPF

[wireshark]: https://www.wireshark.org/

## Browsers

### [Chrome][chrome]

[Extensions][chrome-extensions]

See [Chrome Setup][chrome-setup]

* -> System Settings:
    * Privacy & Security:
        * Location Services: allow (might need maps first?)
        * Files & Folders: allow Downloads (save first?); others as necessary
            * (there should be popup requests when they're first needed)
        * Accessibility: allow (if present)
        * Camera: allow (after e.g. meet.new)
        * Local Network: deny (?)
        * Microphone: allow (after e.g. meet.new)
        * Screen & SA Recording: allow (after e.g. meet.new and sharing)
    * Keyboard -> Keyboard Shortcuts... -> App Shortcuts -> Google Chrome:
        * `Task Manager`: `` opt-shift-` ``

[chrome]: https://www.google.com/chrome/
[chrome-extensions]: https://chromewebstore.google.com/category/extensions
[chrome-setup]: ../chrome.md

### [Firefox][firefox]

* Not primary

[Add-ons][firefox-add-ons]

[Extensions][firefox-extensions]

See [Firefox Setup][firefox-setup]

[firefox]: https://www.firefox.com/en-US/
[firefox-add-ons]: https://addons.mozilla.org/en-US/firefox/
[firefox-extensions]: https://addons.mozilla.org/en-US/firefox/extensions/
[firefox-setup]: ../firefox.md

## Messaging and VC

### [Franz][franz]

* -> System Settings -> Privacy & Security:
    * Location Services: deny
    * Bluetooth: allow (if present) (?)
    * Camera: allow
    * Local Network: deny (if present) (?)
    * Microphone: allow
    * Screen & System Audio Recording: allow (?)
* Account
* General:
    * Don't launch on start
    * Don't keep in background
    * Don't show in system tray
* Language:
    * No spell checking?
* Services:
    * Messenger, Hangouts, Telegram, Discord, Slack, Steam

[franz]: https://meetfranz.com/

### ([Telegram][telegram]? (in Franz instead?))

[telegram]: https://telegram.org/

### ([Signal][signal]?)

[signal]: https://signal.org/

### ([Discord][discord]? (in Franz instead?))

[discord]: https://discord.com/

### [Slack][slack] (optional App Store; in Franz instead?)

[Download - direct][slack-dl]

([Download - App Store][slack-app-store])

See [Slack Setup][slack-setup]

* -> System Settings -> Privacy & Security:
    * Location Services: deny
    * Files & Folders:
        * Downloads: allow (if present)
    * Accessibility: allow (if present)
    * Camera: allow (after video call)
    * Local Network: deny (?)
    * Microphone: allow (after video/audio call)
    * Screen & System Audio Recording: allow (after video call w/sharing)

[slack]: https://slack.com/
[slack-dl]: https://slack.com/downloads/
[slack-app-store]: https://apps.apple.com/us/app/slack-for-desktop/id803453959?mt=12
[slack-setup]: ../slack.md

### [Zoom][zoom]

[Download][zoom-dl]

* -> System Settings -> Privacy & Security:
    * Accessibility: deny (if present) (?)
    * Bluetooth: allow (?)
    * Camera: allow
    * Local Network: deny (?)
    * Microphone: allow
    * Screen & System Audio Recording: allow (after call w/sharing)
* General:
    * Don't remind me \[?]
* Share Screen:
    * Don't silence notifications (if using Muzzle) \[?]
* Background & Effects:
    * (Background)

[zoom]: https://www.zoom.com/en/products/virtual-meetings/
[zoom-dl]: https://zoom.us/download#client_4meeting

## Media

### [Spotify][spotify]

* -> System Settings:
    * Network -> Firewall -> Options...: allow?
    * Privacy & Security:
        * Location Services: deny
        * Local Network: allow (?)
* Autoplay: on
* Audio Quality:
    * Streaming quality: High (?) (Very high?)
    * Download: Very high (?)
    * Auto adjust: on
* Display:
    * Don't show the now-playing panel
    * Don't show looping visuals (?)
    * Don't show announcements (?)
    * Don't show friend activity (?)
* Social:
    * Don't publish new playlists
    * Don't share listening activity
    * Don't show recently played (?)
* Playback:
    * Normalize volume: on
* Startup: No

[spotify]: https://www.spotify.com/us/

### [Amazon Music][amazon-music]

(Mac app was discontinued, but this link still works)

[Download][amazon-music-dl]

* System Preferences:
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

### [Kindle][kindle] (App Store)

[Download - App Store][kindle-app-store]

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Kindle:
        * Sharing: off
* Log in
* Don't group series (?)
* (download books)

[kindle]: https://www.amazon.com/gp/browse.html?node=16571048011&ref=kcp_fd_hz
[kindle-app-store]: https://apps.apple.com/us/app/amazon-kindle-reading-app/id302584613

### [Kobo][kobo]

The desktop app is apparently semi-discontinued, but there's a download link on this [support page][kobo-download]

* Log in
* (download books)

[kobo]: https://www.kobo.com/
[kobo-download]: https://help.kobo.com/hc/en-us/articles/360020121953-Install-Kobo-Desktop-on-your-PC-or-Mac

### [XnView][xnview]

* -> System Settings -> Privacy & Security -> Files & Folders:
    * Allow as necessary, incl. Desktop, Documents, Downloads
    * Deny Google Drive?
* General:
    * General:
        * Check for updates: Weekly (?) (default is Daily)
    * Startup:
        * Start with file: Viewer (default) (?)
        * Start without file: Last (default) (?)
* Interface:
    * Interface:
        * Purge on exit?
    * Tabs:
        * No closing last tab exits?
    * Shortcuts:
        * Viewer:
            * Random file: Custom (0 (?))
    * Keyboard:
        * ESC closes: Viewer only (default) (?)
* Catalog:
    * Catalog:
        * Disable Catalog/caching?

[xnview]: https://www.xnview.com/en/xnview/

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

(Also [OneNote cloud][onenote-cloud] page with download link)

[Download - App Store][onenote-app-store]

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Microsoft OneNote:
        * Sharing: on
    * Privacy & Security:
        * Local Network: deny (?)
    * Keyboard -> Keyboard Shortcuts... -> App Shortcuts -> Microsoft OneNote:
        * `Close This Notebook`: `ctrl-opt-W`
            * (to prevent Sync All -> CTN)
* -> OneNote Web Clipper in Chrome (?)
* (Sign in)
* (Open notebooks, order, sync)
* Spelling:
    * No auto spelling
    * No check spelling
    * No auto caps
* Navigation:
    * Don't show previews (?)
* Edit & View:
    * Paste Options: Match Formatting (?)
* Privacy:
    * Don't send data
* Quick Access Toolbar:
    * Just Undo/Redo (?)
* Printing:
    * Double-sided: on (?) \[?]

[onenote]: https://www.microsoft.com/en-us/microsoft-365/onenote/digital-note-taking-app
[onenote-cloud]: https://onenote.cloud.microsoft/en-us/
[onenote-app-store]: https://apps.apple.com/us/app/microsoft-onenote/id784801555?mt=12

### [Obsidian][obsidian]

* -> System Settings -> Privacy & Security -> Location Services: deny
* Options:
    * Editor:
        * Display:
            * Indent using tabs: off
        * Behavior:
            * Spellcheck: off?
    * Files and links
        * Links
            * Use Wikilinks: off
* Core plugins:
    * Backlinks: show (?)

[obsidian]: https://obsidian.md/

### ([Omnigraffle][omnigraffle]) ($)

[omnigraffle]: https://www.omnigroup.com/omnigraffle

### ([Monodraw][monodraw]) ($)

[monodraw]: https://monodraw.helftone.com/

### ([MindNode][mindnode]) (App Store)

[mindnode]: https://www.mindnode.com/

### [Sequel Ace][sequel-ace] (App Store)

[Download - App Store][sequel-ace-app-store]

[sequel-ace]: https://sequel-ace.com/
[sequel-ace-app-store]: https://apps.apple.com/us/app/sequel-ace/id1518036000?mt=12

## Text Editors

### [MacVim][macvim]

* Check for updates

[macvim]: https://macvim.org/

### [Bluefish][bluefish]

* -> System Settings -> Privacy & Security -> Security: allow

Or, if not available:

* -> Applications -> Bluefish -> right-click -> Open

[bluefish]: https://bluefish.openoffice.nl/index.html

### [VSCode][vscode]

[Extensions][vscode-extensions]

See the [VSCode Setup][vscode-setup] directory

* -> System Settings -> Privacy & Security:
    * Location Services: deny
    * Local Network: deny (?)

* Create a symlink:

    ```shell
    mkdir -p ~/bin
    ln -s '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code' \
        ~/bin/
    ```

* Run this, then add it to your shell startup (see
  [dot.bash_profile][dot-bash-profile])

    ```shell
    export PATH="${HOME}/bin:${PATH}"
    ```

* Add to `.gitignore_global` (see [the git-config script][git-config-sh]):

    ```shell
    if ! grep '^\.vscode$' ~/.gitignore_global > /dev/null 2>&1; then
        echo '.vscode' >> ~/.gitignore_global
    fi
    ```

See also [vscode.post.sh][vscode-post-sh], [vscode-setting.post.sh][vscode-setting-post-sh], and [vscode-go.post.sh][vscode-go-post-sh]

[vscode]: https://code.visualstudio.com/
[vscode-extensions]: https://marketplace.visualstudio.com/VSCode
[vscode-setup]: ../vscode/
[dot-bash-profile]: https://github.com/ocsw/dotfiles/blob/main/dot.bash_profile
[git-config-sh]: ../unix-common/git-config.sh
[vscode-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/vscode.post.sh
[vscode-setting-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/vscode-setting.post.sh
[vscode-go-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/vscode-go.post.sh

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

[account-setup]: ../unix-common/account-setup.psh

### [iTerm2][iterm2]

* -> System Settings -> Privacy & Security:
    * (after e.g. find or chmod)
    * Calendars: allow (if present)
    * Contacts: allow (if present)
    * Files and Folders:
        * Google Drive: allow (if present)
    * Full Disk Access: allow
    * Media & Apple Music: allow
    * Photos: allow (full access)
    * Reminders: allow (if present)
    * Accessibility: allow (if present)
    * App Management: deny (?)
    * Automation -> Google Chrome: allow
        * (after clicking a link)
    * Local Network: deny (if present) (?)
* General:
    * Closing:
        * Disable all confirmations on system shutdown, etc. (?)
    * Software Update:
        * Check automatically
        * Don't ignore non-critical shell integration updates?
    * tmux:
        * Bury tmux session (?)
* Profiles:
    * Colors:
        * Preset (Tango Dark/Light)
    * Text:
        * Font? (default is 12pt Monaco)
    * Terminal:
        * Unlimited scrollback (default is 1000) (?)
        * Paste bracketing off
        * Silence bell (?)
    * Session:
        * Always prompt before closing (?)
* Advanced:
    * Mouse:
        * Scroll wheel sends arrow keys when in alternate screen mode: Yes
* click a link -> Use System Browser, remember

When done, export (General -> Settings) (?)

In your iTerm2 sessions, run this, then add it to your shell startup; see [iterm2.last.sh in dot.bashrc.d][iterm2-last-sh-bashrc]

```shell
. "/Applications/iTerm.app/Contents/Resources/iterm2_shell_integration.bash"
```

Also this, but iTerm2 does it on its own now (see [iterm2.post.sh in dot.bash_profile.d][iterm2-post-sh-bash-profile]):

```shell
export PATH="${PATH}:/Applications/iTerm.app/Contents/Resources/utilities"
```

See also the [shell-integration docs][iterm2-shell-integration-docs] and the [shell-integration scripts][iterm2-shell-integration-source] re the shell integration and the [utilities docs][iterm2-utilities-docs] (which are incomplete) and the [utilities scripts][iterm2-utilities-source] re the utilities.  (There's a more complete list/description at the bottom of the [install script][iterm2-utilities-more-docs] but it's also not fully complete.)

[iterm2]: https://iterm2.com/
[iterm2-last-sh-bashrc]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/iterm2.last.sh
[iterm2-post-sh-bash-profile]: https://github.com/ocsw/dotfiles/blob/main/dot.bash_profile.d/iterm2.post.sh
[iterm2-shell-integration-docs]: https://iterm2.com/documentation-shell-integration.html
[iterm2-shell-integration-source]: https://github.com/gnachman/iTerm2-shell-integration/tree/main/shell_integration
[iterm2-utilities-docs]: https://iterm2.com/documentation-utilities.html
[iterm2-utilities-source]: https://github.com/gnachman/iTerm2-shell-integration/tree/main/utilities
[iterm2-utilities-more-docs]: https://github.com/gnachman/iTerm2-shell-integration/blob/main/shell_integration/install_shell_integration_and_utilities.sh

### [Xcode][xcode] (App Store)

[Download - App Store][xcode-app-store]

* -> System Settings:
    * General -> Login Items & Extensions -> Extensions -> Xcode:
        * Quick Look: on
        * Spotlight: on
    * Privacy & Security:
        * Accessibility: allow (if present)
* Incl. additional components, command-line tools
* Install [unxip][] via [Homebrew](#homebrew) (?)
* `umask 022; xcode-select --install; umask 077` after OS upgrade

[xcode]: https://developer.apple.com/xcode/
[xcode-app-store]: https://apps.apple.com/us/app/xcode/id497799835?mt=12
[unxip]: https://github.com/saagarjha/unxip

### [Homebrew][homebrew]

Run from the [Unix Setup][unix-setup] directory:

```shell
umask 022

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Run this, then add it to your shell startup, as described below
#
# On Apple Silicon
eval "$(/opt/homebrew/bin/brew shellenv)"
# On Intel
eval "$(/usr/local/bin/brew shellenv)"

brew update
#brew outdated
for i in $(cat packages.txt | sed 's/ *#.*$//' | grep -v '^$'); do
    brew install "$i"
done
# Run again with -q to find unavailable packages
brew upgrade
brew cleanup
brew doctor

umask 077

# It's a good idea to run this to remove some arguably-unnecessary permissions
# Brew sets when you install it (some group-writable directories, including in
# /usr/local on Intel) - unless you specifically need something to be group- or
# other-writable
[ -n "$HOMEBREW_PREFIX" ] && chmod -R go-w "$HOMEBREW_PREFIX"

# Run the eval again to pick up any new paths

# Run this, then add it to your shell startup, as described below
. "$(brew --prefix)/etc/bash_completion"
```

* Add `/opt/homebrew/bin/bash` / `/usr/local/bin/bash` to `/etc/shells` and
  `chsh -s "$(brew --prefix)/bin/bash"` (?)
    * on 10.15+ (Catalina), `chsh -s /bin/bash` if not doing the above, and add
      `export BASH_SILENCE_DEPRECATION_WARNING=1` to `~/.bash_profile`; see
      [macos.post.sh][macos-post-sh]
* Restart the shell or run `. ~/.bash_profile`
    * (Sets the PATH, etc.; see [brew.first.sh][brew-first-sh],
      [macos.post.sh][macos-post-sh], and
      [brew.post.sh][brew-post-sh])
    * (Shell restart might be necessary to fix a problem with `pybase`?)
    * (Might have to wait until after the
      [account-setup directions][account-setup]; see the
      [General Setup](#general-setup) section)

[homebrew]: https://brew.sh/
[unix-setup]: ../unix-common/
[macos-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bash_profile.d/macos.post.sh
[brew-first-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bash_profile.d/brew.first.sh
[brew-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/brew.post.sh

### General Setup

* Follow the [account-setup directions][account-setup]
    * Add the macOS-specific [SSH](#ssh) and [GPG](#gpg) directions below
      when setting those up
* Add `~/.to_back_up` to Google Drive (backup) and (partly) SpiderOak One
* Add hostname to `127.0.0.1` in `/etc/hosts`?

### SSH

* Use the macOS keychain:

    ```shell
    cat >> ~/.ssh/config <<EOF
    Host *
        UseKeychain yes
    EOF
    ```

* Add the keys to the agent, and the passphrases to the keychain:

    ```shell
    for i in ~/.ssh/*_{dsa,ecdsa,ecdsa_sk,ed25519,ed25519_sk,rsa}; do
        ssh-add --apple-use-keychain "$i"  # absolute path
    done
    ```

* To automatically add all of your keys to the ssh-agent on login:

    ```shell
    # from the directory these directions are in
    cp ssh-add-all.plist ~/Library/LaunchAgents/
    ```

    (Explanation: with the `AddKeysToAgent` setting, as used in
    [the account-setup directions][account-setup], regular SSH keys will be
    added when they are used.  This Launch Agent is mainly needed for SSH
    signing keys for `git`, which are never used in the usual way, so they
    aren't automatically added regardless of settings.)
* Consolidate and order the config file from most to least specific
* Add `~/.ssh` to SpiderOak One (depending)

### GPG

[github-git]: ../unix-common/git.psh

#### Option 1 (brew)

```shell
umask 022
brew update
brew install gnupg pinentry-mac
umask 077
printf "%s\n" "pinentry-program $(brew --prefix)/bin/pinentry-mac" >> \
    ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
```

* Follow the [GitHub/Git directions][github-git]
* Install GPG Suite, for GUI
    * (If desired; updates may overwrite config files)
    * (May not automatically pick up new keys?)
* (Put our lines at the top of the config files, with a blank before the Suite
  ones (?))

#### Option 2 ([GPG Suite][gpg-suite])

```shell
umask 022
brew uninstall --force gnupg pinentry pinentry-mac
umask 077
```

* Install GPG Suite
* Follow the [GitHub/Git directions][github-git]; create the key in GPG Suite

[gpg-suite]: https://gpgtools.org/

#### Either way

* Sign something (e.g. `gpg -s -u KEY_ID`, then mash keys and hit `ctrl-d`);
  check 'Save in Keychain' (or click 'Always Allow', whichever appears)
* -> System Settings -> GPG Suite -> Settings: (Default Key)
* (Or if not using GPG Suite at all, optionally add `default-key KEY_ID` to
  `gpg.conf` in `~/.gnupg` (at the top, followed by a blank line (?)))

### Permissions

(in most cases)

```shell
chmod -R go-rwx ~
```

(Run that the first time, then see [updates.post.sh][updates-post-sh])

[updates-post-sh]: https://github.com/ocsw/dotfiles/blob/main/dot.bashrc.d/updates.post.sh

## Gaming

### [Steam][steam]

[Download][steam-dl]

* -> System Settings:
    * Network -> Firewall -> Options...: allow?
    * Privacy & Security:
        * Location Services: deny
        * Accessibility: allow (if present)
        * Local Network: allow (Steam, Steam Helper) (?)
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

* -> System Settings -> Privacy & Security -> Files & Folders: allow Downloads
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

* -> System Settings -> Privacy & Security -> Local Network: deny (?)

[ea-app]: https://www.ea.com/ea-app

### [itch App][itch-app]

* -> System Settings -> Privacy & Security -> Location Services: deny

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

(From L to R, with Bartender settings if not default)

(macOS A/V/Screen icon - Bartender doesn't seem to be able to set its position, and it doesn't seem to stay where it's put (maybe something to do with the notch?), so I guess it's best to just leave it at the left)

* (New Items)
* (Docker)
* Spotlight (Always Hidden)
* Focus
* Amphetamine
* Muzzle (Hidden)
* Hammerspoon (Hidden)
* Moom (Hidden)
* BetterTouchTool (Hidden)
* Rectangle (Hidden)
* Witch (Hidden)
* Dropbox
* Google Drive
* SpiderOak One
* other VPNs
* PIA
* WiFi
* ToothFairy
* (Mic Drop)
* Signal Shifter
* (SoundSource: apps, output, input, main)
    * (apps include e.g. music apps, browsers, messaging and VC apps)
* Balance Lock (Hidden)
* Better OSD (Hidden)
* Logitech G HUB (Hidden)
* YubiSwitch (Hidden)
* Now Playing (Hidden (?) - else left of ToothFairy)
* iStat Menus: CPU/GPU, Mem, SSD, Net, Sen
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
* App Store?
* System Settings
* other VPNs
* (Kobo)
* (Kindle)
* ?Apple Music, ?Amazon Music, Spotify, etc.
* Zoom, Franz, Slack
* OneNote
* Obsidian
* Chrome, Firefox, ?Safari
* VSCode / Sublime Text / PyCharm / GoLand / IntelliJ / Xcode / etc.
* TextEdit? / Bluefish? / MacVim? / etc.
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

(open apps to make them appear in the list)

* Finder
* Android File Transfer
* Kobo
* Kindle
* Apple Music, Amazon Music, Spotify, etc.
* Zoom, Franz, Slack

Telegram? (in Franz?)
Signal?
Discord? (in Franz?)

* OneNote
* Obsidian
* Chrome, Firefox, Safari
* VSCode, Sublime Text, PyCharm, GoLand, IntelliJ, Xcode, etc.
* TextEdit, Bluefish, MacVim, etc.
* iTerm
* Sequel Ace
* Docker
* Wireshark
* (Omnigraffle)
* Pages, Numbers, Keynote
* XnView
* Preview
* Calculator
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

* General -> Login Items & Extensions
* Notifications
* Privacy & Security

## OS Version Notes

[Apple Silicon Notes][apple-silicon-notes]

[Catalina Notes][catalina-notes]

[Sonoma Notes][sonoma-notes]

[apple-silicon-notes]: m2.txt
[catalina-notes]: catalina.txt
[sonoma-notes]: sonoma.txt

## Machine Migration

* Copy files, including:
    * All users, including `/Users/Shared`; don't forget:
        * Homedir stuff, main files
        * SSH/GPG keys, `known_hosts`
        * Kubernetes contexts (`~/.kube/config`)
        * Python virtualenvs
        * History: shell, Python, iPython, etc.
        * Local config (shell, SSH, vim, etc.; see the
          [dotfiles install script][dotfiles-install])
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
* Log out of other comms, e.g. Slack, Franz, Zoom, etc.
* Log out of OneNote
* Remove SSH/GPG keys, possibly `known_hosts`
* Remove VSCode, etc. sync
* Deauthorize Kindle
* Log out of Spotify, etc.
* Log out of Steam, etc.
* Remove repos (?)
* Remove containers (if applicable) (?)
* Remove other data (?) (See also the [Migration](#machine-migration) section,
  above)
* Remove shell, etc. history (?)
* Turn off any remote printing / scanning
* Log out of VPNs
* Remove WiFi passwords (?)

[dotfiles-install]: https://github.com/ocsw/dotfiles/blob/main/INSTALL.sh
[hotkeys-ctrl-opt-cmd]: hotkeys.md#controloptioncommand-ctrl-opt-cmd--
