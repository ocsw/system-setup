# macOS Setup

NOTE: most of this has to be done separately for each user account
(e.g., main and presentations)

## OS Settings

### FileVault

incl. save recovery key (pic?)

### Updates (OS and App Store)

### System Settings

See [System Settings Setup][macos-system-settings]

[macos-system-settings]: macos-system-settings.md

### Make Directories (depending)

* `mkdir -p ~/Books ~/install ~/scraps ~/wip`

### Finder

* General:
    * New: `Downloads` (or homedir?)
    * Don't open in tabs
* Sidebar:
    * Show all (except `AirDrop`?, `Movies` (?), machine (?))
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

### [PIA][pia]

* General:
    * Launch on startup
    * Don't connect on launch
* (Exclude io.nwjs.nwjs from uBar (?))

[pia]: https://www.privateinternetaccess.com/

### [FortiClient][forticlient]

* (Exclude from uBar)

[forticlient]: https://www.forticlient.com/

### (other VPNs)

## Hardware

### [Logitech Control Center][lcc] (w/Marathon Mouse M705)

* -> System Settings -> Privacy &S -> Automation -> System Events: allow
  (if there)
* (pair in Unifying Software)
* General:
    * (default tracking multiplier: 1)
    * Buttons (counting far left as 1):
        * Wheel: speed: 3? (default speed 4.6/11, default acc 3/11)
        * Wheel Button: Middle Click (default is Zoom, speed 3/10, acc 3/11)
        * Tilt L/R: (default speed 4/9, default acc 4/11)
        * Thumb button: Desktop (?) Nothing? Mission Control?
            * (default Mission Control -> Mission Control)

[lcc]: https://support.logi.com/hc/en-za/articles/360025297833

### [Logitech Gaming Software][ghub] (w/C920 webcam)

NOTE: requires unplugging and replugging the mouse receiver after it starts

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow
    * Accessibility: allow
* General:
    * Start automatically? (without this, it's still in the login list, hidden)
* Analytics: off (?)
* Arx Control:
    * Mobile Service:
        * Disable (?)
        * No Automatic Discovery (?)

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

### Bluetooth Devices

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

* -> System Settings -> Privacy &S -> Accessibility: allow
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

### [Balance Lock][balance-lock] (optional App Store)

[Download - direct][balance-lock]

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
    * Don't show splash screen?
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

[spideroak-one]: https://spideroak.com/one/
[spideroak-one-dl]: https://spideroak.com/opendownload/

### [Google Drive][google-drive]

* -> System Settings -> Privacy &S:
    * Files and Folders: allow
        * (as necessary; there should be popup requests when they're first
          needed)
    * Extensions:
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
        * FortiClient
        * Amphetamine
        * ToothFairy
* Shortcuts:
    * No hiding
    * Activity: right option (or...?)
    * No switch (?)
* License

[ubar]: https://brawersoftware.com/products/ubar

### [Witch][witch] ($)

* -> System Settings -> Privacy &S -> Accessibility: allow
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
    * lower Delay (?)
    * Spring load?
    * No release to dismiss?
    * Do not list: uBar
* About:
    * License

[witch]: https://manytricks.com/witch/

### [BetterTouchTool][btt] ($)

* -> System Settings -> Privacy &S:
    * Accessibility: allow
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
    * No key for LH/RH/CH/TH/BH, TL/TR/BL/BR, F3/C3/L3/F23/L23
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

[rectangle]: https://rectangleapp.com/

### [Moom][moom] ($)

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
    * Bartender Bar: Use, Only w/Notch
    * Spacing: Small
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

* SmartDelete: on (?)
* Updates: check automatically

[appcleaner]: https://freemacsoft.net/appcleaner/

### [Suspicious Package][suspicious-package]

* -> System Settings -> Privacy &S -> Extensions:
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

### ([HoudahSpot][houdahspot] ($)

* License

[houdahspot]: https://www.houdah.com/houdahSpot/

### [Disk Inventory X][disk-inventory-x]

* -> System Settings -> Privacy &S -> allow

[disk-inventory-x]: http://www.derlien.com/

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
[chrome-extensions]: https://chrome.google.com/webstore/category/extensions
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

[signal]: https://signal.org/en/

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

(Preferences are per-workspace)

(sign into workspaces)

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow
    * Screen Recording: allow
    * Accessibility: allow (if there)
* Profile
* Status
* Notifications:
    * Notify:
        * Direct messages
        * Threads
    * DND? (10PM - 8AM?)
    * Sound & appearance:
        * Preview (depending)
        * Sound
        * Badge (depending)
        * Bounce once
    * Inactive:
        * Mobile: 2 min
        * No email
* Sidebar:
    * Always show: all but All, People, Apps
    * Sort: alpha
    * Don't list private separately (depending)
* Themes:
    * Colors: Aubergine (Aubergine Classic?)
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
* Language & Region:
    * TZ (and/or auto (?))
    * Enable spellcheck
* Mark as Read: Start where I left off, and mark the channel read (?)
* Audio & video:
    * Set status when in a huddle
    * Blur (depending)
* Privacy & visibility:
    * Slack Connect:
        * No one (depending)
* Advanced:
    * Input options:
        * Don't send w/enter on \`\`\`
    * Confirmations:
        * Ask to toggle status
    * Other options:
        * No channel suggestions?

[slack]: https://slack.com/
[slack-dl]: https://slack.com/downloads/
[slack-app-store]: https://apps.apple.com/app/slack/id803453959

### [Zoom][zoom]

[Download][zoom-dl]

* -> System Settings -> Privacy &S:
    * Microphone: allow
    * Camera: allow
    * Accessibility: deny (if there) (?)
    * Screen Recording: allow (if necessary)
* Share Screen:
    * Don't silence notifications (if using Muzzle) [?]
* Background & Effects:
    * (Background)

[zoom]: https://explore.zoom.us/meetings
[zoom-dl]: https://zoom.us/download#client_4meeting

## Media

### [Spotify][spotify]

* Autoplay: on
* Audio Quality:
    * Streaming quality: Automatic
    * Download: Very high?
    * Auto adjust: on
    * Normalize volume: on
* Display:
    * Don't show the now-playing panel
    * Don't show desktop notifications (?)
    * Don't show friend activity (?)
* Social:
    * Don't publish new playlists
    * Don't share listening activity
    * Don't show recently played (?)
* Startup: No

[spotify]: https://www.spotify.com/us/

### [Amazon Music][amazon-music]

[Download][amazon-music-dl]

* Advanced:
    * Don't launch on startup

[amazon-music]: https://www.amazon.com/music
[amazon-music-dl]: https://www.amazon.com/Amazon-Music-Apps/b?ie=UTF8&node=2658409011

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

* -> System Settings -> Privacy &S -> Accessibility: allow (if there)
* No dictionary
* No crash reports (?)
* No auto updates?
* (rename and add shared libraries)
* (download books)

[kindle]: https://www.amazon.com/kindle-dbs/fd/kcp

### [XnViewMP][xnviewmp]

* -> System Settings -> Privacy &S -> Files and Folders: allow as necessary
* Startup Wizard:
    * No anonymous logs
* General:
    * General:
        * Startup directory: Last (default) (?)
* Interface:
    * Tabs:
        * No closing last tab exits?
    * Keyboard:
        * ESC quits: Never (default) (?)
* Catalog:
    * Disable Catalog/caching?

[xnviewmp]: https://www.xnview.com/en/xnviewmp/

## Documents and Productivity

### [Pages][pages] (App Store)

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No link style?
    * No smart quotes?
    * Replacements on (?)

[pages]: https://www.apple.com/pages/

### [Numbers][numbers] (App Store)

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No link style?
    * No smart quotes?
    * Replacements on (?)

[numbers]: https://www.apple.com/numbers/

### [Keynote][keynote] (App Store)

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

[keynote]: https://www.apple.com/keynote/

### [Office][ms-office]

[ms-office]: https://www.office.com/

### [OneNote][onenote] (App Store)

[Download][onenote-dl]

* -> System Settings -> Privacy &S -> Extensions:
    * Added extensions: allow
    * Share: allow
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

[mindnode]: https://mindnode.com/

### [Sequel Pro][sequel-pro]

* Auto-update

[sequel-pro]: https://www.sequelpro.com/

## Text Editors

### [MacVim][macvim]

* Check for updates

[macvim]: https://macvim-dev.github.io/macvim/

### [Bluefish][bluefish]

* -> System Settings -> Privacy &S -> allow

[bluefish]: http://bluefish.openoffice.nl/index.html

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

### ([Atom][atom], [Sublime][sublime], etc.)

[atom]: https://atom.io/
[sublime]: https://www.sublimetext.com/

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

* add `/usr/local/bin/bash` / `/opt/homebrew/bin/bash` to `/etc/shells` and
  `chsh -s "$(brew --prefix)/bin/bash"`?
    * on 10.15+ (Catalina), `chsh -s /bin/bash` if not doing the above, and add
      `export BASH_SILENCE_DEPRECATION_WARNING=1` to `~/.bash_profile`
* restart shell (fixes problem with `pybase`)

[homebrew]: https://brew.sh/

### General Setup

See the [Unix Setup][unix-setup] directory

* dotfiles, incl. dotfile and `~/.to_back_up` links
* add `~/.to_back_up` to Google Drive (backup) and (partly) SpiderOak One
* rest of the [Unix Setup][unix-setup] directory
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
    ssh-add --apple-use-keychain "$i"  # absolute path
done
```

* add `~/.ssh` to SpiderOak One (depending)

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

* follow directions in [Unix Account Setup][unix-account-setup]
* install GPG Suite, for GUI
    * (if desired; updates may overwrite config files)
    * (may not automatically pick up new keys?)
* (put our lines at the top of the config files, with a blank before the Suite
  ones?)

#### Option 2 ([GPG Suite][gpg-suite])

```shell
umask 022
brew uninstall --force gnupg pinentry pinentry-mac
umask 077
```

* install GPG Suite
* create a key
    * use RSA/RSA 4096, no expiration, the same name and email as
      for git, and comment `HOSTNAME -> GitHub`
    * see [Unix Account Setup][unix-account-setup]

[gpg-suite]: https://gpgtools.org/

#### Either way

* sign something (e.g. `gpg -s -u KEY_ID`, then mash keys and hit `ctrl-d`);
  check 'Save in Keychain' (or click 'Always Allow', whichever appears)
* -> System Settings -> GPG Suite -> Settings: (Default Key)
* (or if not using GPG Suite at all, optionally add `default-key KEY_ID` to
  `gpg.conf` in `~/.gnupg`)

### Permissions

(in most cases)

```shell
chmod -R go-rwx ~
chmod -h go-rwx ~/.[a-zA-Z0-9]* ~/.ssh/config ~/.gnupg*/* ~/.m2/* \
    ~/Library/Application\ Support/Code/User/* ~/.vim/autoload/pathogen.vim \
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

[epic-games]: https://www.epicgames.com/store/en-US/
[epic-games-dl]: https://www.epicgames.com/store/en-US/download

### [GOG Galaxy][gog]

[Download][gog-dl]

* General:
    * Don't launch at startup
    * Starting page: Library
* (install games)

[gog]: https://www.gog.com/
[gog-dl]: https://www.gog.com/galaxy

### ([Origin][origin])

[Download][origin-dl]

[origin]: https://www.origin.com/usa/en-us/store
[origin-dl]: https://www.origin.com/usa/en-us/store/download

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
* (Carbon Black (Always Hide?))
* Spotlight (Always Hide)
* Amphetamine
* Muzzle (Hidden)
* Moom (Hidden)
* Rectangle (Hidden)
* BetterTouchTool (Hidden)
* Witch (Hidden)
* Dropbox
* Google Drive
* SpiderOak One
* FortiClient / other VPNs
* PIA
* WiFi
* ToothFairy
* SoundSource: apps, output, input, main
    * (apps include e.g. music apps, browsers, messaging and VC apps)
* Balance Lock (Hidden)
* Blue Sherpa
* Logitech Gaming Software (Hidden)
* YubiSwitch (Hidden)
* (AirPlay) (Hidden)
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
* FortiClient / other VPNs
* (Kindle)
* Amazon Music, Spotify, etc.
* (Skype), Zoom, Franz, Slack
* OneNote
* Chrome, Firefox
* VSCode / Atom / Sublime / PyCharm / GoLand / IntelliJ / etc.
* (TextEdit) / Bluefish / MacVim / etc.
* iTerm
* (Omnigraffle)
* Pages?
* Numbers?
* Keynote?
* (Steam)
* (Epic)
* (GOG Galaxy)
* (Origin)
* (itch)
* (CrossOver)
* (CrossOver apps)

### uBar App Order

* Finder
* Android File Transfer
* Kindle
* Apple Music, Amazon Music, Spotify, etc.
* Skype, Zoom, Franz, Slack

Telegram? (in Franz?)
Signal?
Discord? (in Franz?)

* OneNote
* Chrome, Firefox, Safari
* VSCode, Atom, Sublime, PyCharm, GoLand, IntelliJ, Xcode, etc.
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
* (Origin)
* itch
* CrossOver
* CrossOver apps
* ESET / etc.

### Moom Window Placement

## OS Version Notes

[Catalina Notes][catalina-notes]

[Apple Silicon Notes][apple-silicon-notes]

[catalina-notes]: catalina.txt
[apple-silicon-notes]: m2.txt

## Machine Migration

* Copy files
    * All users, including `/Users/Shared`; don't forget:
        * SSH/GPG keys, known_hosts
        * Kubernetes contexts (~/.kube/config)
        * Python virtualenvs
        * History: shell, Python, iPython, etc.
        * Local config (shell, SSH, vim, etc; see
          [this script][dotfiles-install])
    * Check `/tmp`, `/usr/tmp`, `$TMPDIR`
    * Check `/etc` and `/usr/local/etc` / `/opt/homebrew/etc`
    * Check anything non-Homebrew in `/opt`
* Copy containers (if applicable)
* Check for other applications
* Copy tabs
* Check VSCode settings against this repo
* Deauthorize Kindle
* Save and copy desktop, Meet, Zoom, etc. backgrounds
* Remove from iCloud Devices

This is also a good time to export browser bookmarks to have a backup.

[dotfiles-install]: https://github.com/ocsw/dotfiles/blob/master/INSTALL.sh
