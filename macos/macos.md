# macOS Setup

NOTE: most of this has to be done separately for each user account
(e.g., main and presentations)

## OS Settings

### FileVault

incl. save recovery key (pic?)

### Updates (OS and App Store)

### System Preferences

(sections are in default order; see the bottom of this section)

#### General

* Default browser
* Ask to keep changes
* No close windows (?) (depending)

#### Desktop & Screen Saver

* Wallpaper
* Screen saver - shell, 20m
* Hot corner to lock screen (UR)

#### Dock

* On left (or right, depending on monitor setup)
* Prefer tabs: always (?)
* Min to app
* Autohide
* No recent

#### Security & Privacy

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
        * All apps off (except Flux if installed, iStat if Current Location)
        * System Services: don't show icon
    * Contacts: all off
    * Calendars: all off
    * Camera: Chrome, Logitech Gaming Software, Skype
    * Microphone: Chrome, Logitech Gaming Software, (Onde Audio Recorder),
      Skype
    * Accessibility:
        * allow, incl. Bartender, BetterTouchTool, Dropbox, Google Software
          Update (?), iTerm, Kindle, Logitech Gaming Software, Moom,
          Muzzle, Rectangle, SoundSource, uBar, Witch
    * Automation:
        * all on (?), incl.:
            * FortiClient -> Google Chrome, Safari
            * Franz -> System Events
            * Google Backup -> System Events
            * Google Software Update -> System Events
            * Installer -> System Events?
            * iTerm -> Google Chrome
            * Logitech Control Center -> System Events
            * SpiderOakONE -> System Events
            * uBar -> Finder, iTunes, Spotify
            * Witch -> Code, Slack, System Preferences, System Events
    * No analytics
* Lock

#### Displays

* No mirroring in menu bar (?)
* Display:
    * Auto brightness
    * True Tone
* Arrangement:
    * monitors
    * main (top strip) (NOTE: seems to mess up Moom snapshots?)
* Night Shift: Sunset to Sunrise

#### Energy Saver

* Change times? (defaults: 2 min battery, 10 min power)
* No battery in menu bar (after iStat Menus, see below)
* Lock (not available on 10.14+ (Mojave)?)

#### Keyboard

* Keyboard:
    * (default repeat: 7/8, delay: 3/6)
    * Touch Bar / Control Strip:
        * small: no Siri, add lock on left (?)
        * big: no Siri?, lock, screenshot (left of media)
    * Caps lock: none (?) cmd? esc? (per keyboard)
* Text:
    * Remove omw
    * No correct/capitalize/period
    * No smart quotes?
* Shortcuts:
    * Mission Control:
        * Show Desktop: ^F11 (because of VSCode)
        * Show Dashboard: ^F12 (because of VSCode)
    * Accessibility: Zoom on (?)
    * App Shortcuts:
        * Lock Screen: `ctrl-opt-cmd-L` [10.13+ (High Sierra)]
    * (other shortcuts)
* Input Sources:
    * No menu bar

#### Mouse

* No Natural scroll
* (default tracking: 4/10, scrolling 4/8, double-click 9/11)

#### Trackpad

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

#### Printers & Scanners

* (devices; see below)
* Lock (not available on 10.14+ (Mojave)?)

#### Startup Disk

* Lock

#### iCloud

* (Account Details)
* iCloud Drive:
    * Documents:
        * Pages/Numbers/Keynote?
        * Only System Preferences (?)
* Photos:
    * Don't upload
    * Allow Shared Albums
* No Mail
* No Safari
* No Siri (?)
* No Keychain (?)
* No Back to My Mac (?)
* Allow Find My Mac (?)
* No News
* No Stocks
* No Home

#### Software Update / App Store

* Auto check, dl, app/system install
* No OS updates
* Lock (not available on 10.14+ (Mojave)?)

#### Network

* WiFi networks
* Wired first if available
* Lock (not available on 10.14+ (Mojave)?)

#### Bluetooth

* (devices; see below)
* Show in menu bar (if not using ToothFairy; see below)

#### Extensions

* Finder Extensions:
    * Dropbox, Google
* Share Menu:
    * OneNote on
    * others off?
* Today:
    * only iStat Menus, Calculator (in that order)

#### Sharing

* Computer Name
* Local Hostname
* No dynamic global hostname
* -> `sudo scutil --set HostName name`

#### Touch ID

* (fingers)

#### Users & Groups

* Current:
    * Password:
        * Icon
    * Login Items:
        * incl. Android File Transfer, BetterTouchTool, CrossOver, Dropbox,
          Google Backup, Logitech Gaming Software, Moom, Rectangle,
          SoundSource, SpiderOakONE, uBar, Witch, YubiSwitch
* Disable Guest User
* Login Options:
    * Display login as name and password? (entry boxes only, vs list of
      users)
    * Show fast user switching menu as: Icon
* Lock

#### Parental Controls

* Lock

#### Siri

* Off?
* Listen?
* No menu bar (?)
* Suggestions: all off (?)

#### Date & Time

* Time Zone
* Clock:
    * Show date and time
    * Show AM/PM (default)
    * Show day (default)
    * Show date (if no Itsycal / iStat Menus)
* Lock

#### Time Machine

* Lock (not available on 10.14+ (Mojave)?)

#### Accessibility

* Zoom: (?)
    * Use shortcuts
    * Use gesture with opt
    * Options:
        * Flash on notification

#### View -> Organize Alphabetically (?), Show All

### Make Directories (depending)

* `mkdir -p ~/Books ~/install ~/scraps ~/wip`

### Finder

* General:
    * New: `Downloads` (or homedir?)
    * Don't open in tabs
* Sidebar:
    * Show all (except `AirDrop`, `Movies`?)
* Advanced:
    * Remove after 30 days
* `cmd-shift-.` for dotfiles
* Sidebar Order:
    * `Google Drive`
    * `Dropbox`
    * (`AirDrop`)
    * `Recents`
    * `Applications`
    * `Desktop`
    * `Documents`
    * `Downloads`
    * `Books`
    * (`Movies`)
    * `Music`
    * `Pictures`
    * `install` (drag to sidebar) (?)
    * `repos`
    * `scraps`?
    * `wip` (?)
    * (other data, install, etc.)
    * homedir

## Networking

### PIA

* General:
    * Launch on startup
    * Don't connect on launch
* (Exclude io.nwjs.nwjs from uBar (?))

### FortiClient

* (Exclude from uBar)

### (other VPNs)

## Hardware

### Logitech Control Center (w/Marathon Mouse M705)

* (pair in Unifying Software)
* General:
    * (default tracking multiplier: 1)
    * Buttons (counting far left as 1):
        * Wheel: speed: 3? (default speed 4.6/11, default acc 3/11)
        * Wheel Button: Middle Click (default is Zoom, speed 3/10, acc 3/11)
        * Tilt L/R: (default speed 4/9, default acc 4/11)
        * Thumb button: Desktop (?) Nothing? Mission Control?
            * (default Mission Control -> Mission Control)

### Logitech Gaming Software (w/C920 webcam)

* NOTE: requires unplugging and replugging the mouse receiver after it starts
* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* General:
    * Start automatically? (without this, it's still in the login list, hidden)
* Analytics: off (?)
* Arx Control:
    * Mobile Service:
        * Disable (?)
        * No Automatic Discovery (?)

### YubiSwitch

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

### Bluetooth Devices

e.g. headphones, controllers

### ToothFairy (App Store)

* Add devices:
    * Icon
    * Hotkey?
    * Show battery
    * Advanced:
        * Improve sound quality (depending)
* Launch at login
* Hide Dock icon
* (Exclude from uBar)

### SoundSource

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* (^ after Super Volume Keys)
* General:
    * Start at login
    * Hotkey (`ctrl-opt-cmd-S`)
* Audio:
    * Super Volume Keys
* Appearance:
    * Follow Accent Color
    * Show all meters (?)
* License

### Blue Sherpa

### Android File Transfer

### Printers

### Scanners

## Backup and Sync

### SpiderOakONE

* General:
    * Launch minimized?
    * Don't show splash screen?
* Network:
    * Allow LAN-Sync?
* remove Hive symlink from desktop
* Backup:
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

### Google Backup and Sync

* Computer:
    * Name: change to match hostname
    * Folders:
        * `.to_back_up`, `Books`, `Music`, `scraps`, `wip`
        * (+ more depending on contents / context)
        * [work: add `Desktop`, `Documents`, `Downloads`, ?`Pictures`]
    * Remove everywhere (?)
    * USB/SD: no
* Google Drive:
    * Sync My Drive (all) (?)

### Dropbox

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* General:
    * Start on startup
    * Enable Finder integration
* Account
* Import:
    * No Photos

## UI Tools and Tweaks

### uBar

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* General:
    * Pinning: all if not ultrawide, else bottom only
    * Display: Main (?)
    * No window grouping
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
        * FortiClient
        * Amphetamine
        * ToothFairy
* Shortcuts:
    * No hiding
    * Activity: right option
* License

### Witch

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* Actions:
    * 1:
        * Cycle windows
        * Sort by app act, window act
        * Orientation: down
        * No apps w/o windows
        * Keyboard: `cmd-tab`, `shift-cmd-tab` (or `opt-tab`, `shift-opt-tab`?)
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
    * Spring load?
    * No release to dismiss?
    * Do not list: uBar
* About:
    * License

### BetterTouchTool

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* Basic:
    * Touch Bar:
        * No icon
* Advanced:
    * General:
        * Launch on startup
        * No crash logs (?)
    * Sync?
    * Window Snapping:
        * Disable (?)
    * Moving & Resizing:
        * Move: `ctrl-opt`
        * Resize: `ctrl-opt-cmd`
        * Bring to front
* License

### Rectangle

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* Launch on login
* No snap by dragging (?)
* Check for updates
* No key for LH/RH/TH/BH, TL/TR/BL/BR, F3/F23/C3/L23/L3
* No key for AlmostMax/MaxH, L/R/U/D
* Maximize: `ctrl-opt-cmd-F`
* Make Smaller: `ctrl-opt-cmd-down`
* Make Larger: `ctrl-opt-cmd-up`
* Center: `ctrl-opt-cmd-C`
* Restore: `ctrl-opt-cmd-Z`
* Next Display: `ctrl-opt-cmd-right`
* Previous Display: `ctrl-opt-cmd-left`

### Moom

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
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

### Amphetamine (App Store)

* Don't show message
* Don't show in Dock
* General:
    * Quick-Start: right click
    * Launch at login
    * Hide in Dock
* Sessions:
    * Default Duration: 3 hours
* Battery / Power:
    * End if below 10%
    * Prompt
    * Ignore when connected
* (Triggers)
* Hotkeys:
    * Start/End: `ctrl-opt-cmd-A`
    * If active, end
* Appearance:
    * Icon: Eye (or Tea Kettle? Pill 2?)
    * Lower opacity?
* (Exclude from uBar)

### Muzzle

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow

### iStat Menus

#### Intel Power Gadget

#### Global (iStat)

* License

#### Notifications (iStat)

These are all alerts; do the other sections first

* No weather
* Daylight Saving Change: 2 days before
* Battery Time Remaining: 10 minutes (default)
* Low Battery: 10% (default)
* Bluetooth Battery: 5% (default)
* Any Temperature Above: 100C for 30 sec
* CPU Usage Above: 75% for 10 sec (default time) (banner (?))
* Memory Pressure Above: 80% for 10 sec (default)
* 'Macintosh HD' Used Percentage Above: 90% (default)
* Internet Status Changed?

#### Weather (iStat)

* Off

#### CPU (iStat)

* Active: label, cores (and GPU stuff?)
* App usage format: 100%
* Processes: 10 (?)
* Hide HT cores

#### Memory (iStat)

* Active: label, bar graph (pressure, or if memory, don't show breakdowns)
* Processes: 10 (?)
* App format: size
* Don't hide inactive memory (?)

#### Disks (iStat)

* Active:
    * label, disk space, (?)activity num (show label),
    * ?activity graph (show bg)
* Activity mode: detailed (per disk)
* Processes: 10

#### Network (iStat)

* Active: net label, arrow label, (?)bandwidth num
* Processes: 10
* Decimals (KB): 1(?) 2?
* Combine bandwidth
* Show BSD names

#### Sensors (iStat)

* Active: label, ?single num
* Degrees: C
* Sensors: CPU PECI (show units), ?CPU frequency (show units)

#### Battery (iStat)

* Active: ?label, horizontal color batt (with icons), time
* Bluetooth: symbol, vertical graph
* Airpods: symbol, vertical graph
* Don't disable Bluetooth monitoring
* Batteries: internal, mouse [others?]

#### Time (iStat)

* On
* Menu bar: outline date icon (or clock icon, or `EE hh:mm a`)
* World Clocks: `ZZZ __RELATIVE_OFFSET__ EE HH:mm` (default 06:05 AM)
* Hotkey: `ctrl-opt-cmd-T`
* Dropdown: no calendar (if Itsycal)
* World clocks:
    * UTC
    * No Moon?
    * No Current Location? (else give location access)
    * (other locations)
* Open dropdown -> hide request box

#### Combined (iStat)

* Off

#### -> System Preferences

* Date & Time:
    * No date (if using date icon)
* Energy Saver:
    * No battery in menu bar
* Extensions:
    * Today:
        * iStat on, first
* Security & Privacy:
    * Privacy:
        * Location Services:
            * iStat on (if Current Location)

### Bartender

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* Menu Items: (see bottom)
* General:
    * Launch at login
* License

## General Utilities

### Kap

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

### AppCleaner

* SmartDelete: on (?)
* Updates: check automatically

### Suspicious Package

### NameChanger

* No history
* Auto update

### (HoudahSpot (incl. license))

### Disk Inventory X

### DaisyDisk (incl. license)

### Wireshark

## Browsers

### Chrome

(see `../chrome.txt`)

### Firefox

* General:
    * Restore
    * (Default check)
    * Ask where to save
* Home:
    * Homepage: Google (or blank?)
    * New Tab: blank
* Search:
    * No suggestions (?)
* Privacy & Security:
    * Don't ask to save l/p
    * No autofill?
    * Don't send data to Mozilla (?)
* (Bunny)
* Keys
* Wheel and keys
* (see `../firefox` directory)

## Messaging and VC

### Franz

* Account
* General:
    * Don't launch on start
    * Don't keep in background
    * Don't show in system tray
* Advanced:
    * No spell checking?
* Services:
    * Messenger, Hangouts, Telegram, Skype, Discord, Slack, Steam

### (Telegram? (in Franz?))

### (Signal?)

### Skype (in Franz?)

### (Discord? (in Franz?))

### Slack (App Store; in Franz?)

(preferences are per-workspace)

(sign into workspaces)

* Profile
* Status
* Notifications:
    * Notify:
        * Direct messages
        * Threads
    * DND (?) (10PM - 8AM?)
    * Sound & appearance:
        * Preview (depending)
        * Sound
        * Badge (depending)
        * Bounce once
    * Inactive:
        * Mobile: 2 min
        * No email
* Language & Region:
    * TZ
* Messages & Media:
    * Theme: clean
    * Names: display names
    * Additional:
        * Display typing
        * Display color swatches
    * Emoji Style:
        * Show jumbomoji
        * Convert typed emoticons
    * Inline Media & Links:
        * Show uploaded
        * Show from links (below 2 MB)
        * Show text previews
* Sidebar:
    * Appearance: Everything
    * Sorting and grouping:
        * Sort: alpha
        * Don't list private separately (depending)
        * Don't list shared separately (depending)
    * Additional:
        * Show all unreads
        * Show Quick Switcher
    * Theme: Aubergine (Aubergine Classic?)
* Mark as Read: Start where I left off, and mark the channel read
* Advanced:
    * Input Options:
        * Enable spellcheck
        * Don't send w/enter on \`\`\`
    * Other Options:
        * PU/etc. scroll
        * Ask to toggle status
        * No channel suggestions?
        * Set status when on a call

## Media

### Spotify

* Music Quality:
    * HQ
* Social:
    * Don't make new playlists public
    * Don't show recently played
* Display:
    * Show unavailable
    * Don't show friend activity (?)
    * Don't show desktop notifications (?)
* Autoplay: no?
* Advanced:
    * Startup: no

### Amazon Music

* Advanced:
    * Don't launch on startup

### iTunes

* Account -> Authorize
* Downloads:
    * Auto music
    * Always check
* Store:
    * Sync podcasts
    * Auto d/l art
    * Share details
* Advanced:
    * Don't copy to folder?

### Kindle

* No dictionary
* No crash reports (?)
* (rename and add shared libraries)
* (download books)

### XnViewMP

* General:
    * General:
        * Startup directory: Last (default) (?)
* Interface:
    * Keyboard:
        * ESC quits: Never (default) (?)

## Productivity and Editing

### MacVim

### Bluefish

### (Atom, Sublime, PyCharm, IntelliJ, etc.)

### VSCode

* (see `../vscode` directory)
* Create symlink:

```shell
ln -s '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code' \
    ~/bin/
```

### (Omnigraffle)

### (Monodraw)

### (MindNode)

### OneNote (App Store)

* -> System Preferences -> Extensions -> Share Menu -> on
* -> OneNote Web Clipper in Chrome (?)
* General:
    * Store in OneDrive (?)
* Spelling:
    * No auto spelling
    * No check spelling
    * No auto caps
* Quick Access Toolbar:
    * Just Undo/Redo
* Navigation Panes:
    * Hide all (just Section List?)
* Printing:
    * Two-Sided

### Office

### Pages

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No Link style?
    * No smart quotes?
    * Replacements on (?)

### Numbers

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No Link style?
    * No smart quotes?
    * Replacements on (?)

### Keynote

* General:
    * Author
* Slideshow:
    * No exit after last
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No Link style?
    * No smart quotes?
    * Replacements on (?)

### Sequel Pro

* Auto-update

## Command-line Related

### iTerm2

* -> System Preferences -> Security &P -> Privacy -> Accessibility -> allow
* General:
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

### XCode

* incl. additional components, command-line tools
* `xcode-select --install` after OS upgrade

### Homebrew

```shell
umask 022
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
# brew outdated
for i in $(cat packages.txt | sed 's/ *#.*$//' | grep -v '^$'); do
    brew install "$i"
done
brew upgrade
brew cleanup
brew doctor
umask 077
```

* add `/usr/local/bin/bash` to `/etc/shells` and `chsh -s /usr/local/bin/bash`?
    * on 10.15+ (Catalina), `chsh -s /bin/bash` if not doing the above, and add
      `export BASH_SILENCE_DEPRECATION_WARNING=1` to `~/.bash_profile`
* restart shell (fixes problem with `pybase`)

### General Setup

* (see `../unix-common/packages.txt`)
* dotfiles, incl. dotfile and `.to_back_up` links
* add `.to_back_up` to Google Backup
* rest of `../unix-common`
* add hostname to `127.0.0.1` in `/etc/hosts`?

### SSH

```shell
cat >> ~/.ssh/config <<EOF
Host *
    UseKeychain yes
EOF
```

* consolidate and order config file from most to least specific

```shell
for i in ~/.ssh/*_{dsa,ecdsa,ed25519,rsa}; do
    ssh-add -K "$i"  # absolute path
done
```

* add `.ssh` to SpiderOakONE (depending)

### GPG

#### Option 1 (brew)

```shell
umask 022
brew install gnupg pinentry-mac
umask 077
echo "pinentry-program /usr/local/bin/pinentry-mac" >> \
    ~/.gnupg/gpg-agent.conf
echo "pinentry-program /usr/local/bin/pinentry-mac" >> \
    ~/.gnupg_pre_2.1/gpg-agent.conf  # (?)
gpgconf --kill gpg-agent
```

* follow directions in `../unix-common/account-setup.psh`
* install GPG Suite, for GUI
    * (if desired; updates may will overwrite config files)
    * (may not automatically pick up new keys?)
* (put our lines at the top of the config files, with a blank before the suite
  ones?)

#### Option 2 (suite)

```shell
umask 022
brew uninstall --force gnupg pinentry
umask 077
```

* install GPG Suite
* create a key (use RSA/RSA 4096, no expiration, the same name and email as
  for git, and comment `HOSTNAME -> GitHub`; see
  `../unix-common/account-setup.psh`)

#### Either way

* sign something (e.g. `git -s -u KEY_ID`, then mash keys and hit `ctrl-d`);
  check 'Save in Keychain' (or click 'Always Allow', whichever appears)
* -> System Preferences:
    * GPG Suite:
        * Settings:
            * (Default Key)
* (or if not using GPG suite at all, optionally add `default-key KEY_ID` to
  `gpg.conf` in both (?) `~/.gnupg` and `~/.gnupg_pre_2.1`)

### Permissions

(in most cases)

```shell
chmod -R go-rwx ~
chmod -h go-rwx ~/.[a-zA-Z0-9]* ~/.ssh/config ~/.gnupg*/* ~/.m2/* \
    ~/Library/Application\ Support/Code/User/* ~/.vim/autoload/pathogen.vim \
    ~/bin/*
```

## Gaming

### Steam

* Account
* Interface:
    * Don't run on startup
* Controller:
    * General:
        * Add
        * Prefs -> lower brightness (down to 1/3)
* (install games)

### Epic Games Launcher

* Don't run on startup
* (install games)

### GOG Galaxy

* General:
    * Don't launch at startup
    * Starting page: Library
* (install games)

## Windows Compatibility

### CrossOver

* Updates:
    * Check
    * Log and report
* License
* (install programs, e.g. Steam, IrfanView w/plugins)

## List Orders

### Menu Bar Order

(from L to R, with Bartender settings if not default)

* (Docker)
* (Carbon Black (Always Hide?))
* Spotlight (Always Hide)
* Muzzle (Hide, ?Show for updates)
* Amphetamine
* Moom (Hide, ?Show for updates)
* Rectangle (Hide, ?Show for updates)
* BetterTouchTool (Hide, ?Show for updates)
* Witch (Hide, ?Show for updates)
* Dropbox
* Google Backup
* SpiderOakONE
* FortiClient
* PIA
* WiFi
* ToothFairy
* SoundSource: apps, output, input, main
* Logitech Gaming Software (Hide, ?Show for updates)
* YubiSwitch (Hide, ?Show for updates)
* (AirPlay) (Hide, ?Show for updates)
* iStat Menus: CPU, Mem, SSD, Net, Sen
* iStat Menus: Battery(s), Time (both - Always Show?)
* (Itsycal)
* Date & Time (Always Show?)
* Fast user switching (Always Show?)
* Bartender
* (Notifications)

### Dock Order

(all -> keep in dock):

* Finder
* Siri?
* Launchpad (?)
* Dashboard? (drag to dock)
* System Preferences
* FortiClient
* (Kindle)
* Amazon Music, Spotify, etc.
* (Skype), Franz, Slack
* OneNote
* Chrome, Firefox
* VSCode / Atom / Sublime / PyCharm / IntelliJ / etc.
* (TextEdit) / Bluefish / MacVim / etc.
* iTerm
* (Omnigraffle)
* Pages?
* Numbers?
* Keynote?
* (Steam)
* (Epic)
* (GOG Galaxy)
* (CrossOver)
* (CrossOver apps)

### uBar App Order

* Finder
* Android File Transfer
* Kindle
* iTunes, Amazon Music, Spotify, etc.
* Skype, Franz, Slack

Telegram? (in Franz?)
Signal?
Discord? (in Franz?)

* OneNote
* Chrome, Firefox
* VSCode, Atom, Sublime, PyCharm, IntelliJ, XCode, etc.
* TextEdit, Bluefish, MacVim, etc.
* iTerm
* Docker
* Wireshark
* (Omnigraffle)
* Pages, Numbers, Keynote
* XnViewMP
* Preview
* Calculator
* Steam
* Epic
* GOG Galaxy
* CrossOver
* CrossOver apps
* ESET / etc.

### Moom Window Placement

## OS Version Notes

(see also `catalina.txt`)