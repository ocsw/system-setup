# macOS Setup

NOTE: most of this has to be done separately for each user account
(e.g., main and presentations)

## OS Settings

### FileVault

incl. save recovery key (pic?)

### Updates (OS and App Store)

### System Preferences

See [System Preferences Setup][macos-system-prefs]

[macos-system-prefs]: macos-system-prefs.md

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

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow
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

* Add devices:
    * Icon
    * Hotkey?
    * Show battery
    * Advanced:
        * Improve sound quality (depending)
* Launch at login
* Hide Dock icon
* (Exclude from uBar)

[toothfairy]: https://c-command.com/toothfairy/

### [SoundSource][soundsource] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[soundsource]: https://rogueamoeba.com/soundsource/

### [Blue Sherpa][blue-sherpa]

* -> System Preferences -> Security &P -> Privacy -> Microphone: allow

[blue-sherpa]: https://www.bluemic.com/en-us/products/sherpa/

### [Android File Transfer][android-ft]

[android-ft]: https://www.android.com/filetransfer/

### Printers

### Scanners

## Backup and Sync

### [SpiderOak One][spideroak-one]

[Download][spideroak-one-dl]

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

### [Google Backup and Sync][google-b-s]

* -> System Preferences -> Extensions -> Finder Extensions: allow
* Computer:
    * Name: change to match hostname
    * Folders (all from homedir):
        * `.to_back_up`, `Books`, `Music`, `scraps`, `wip`
        * (+ more depending on contents / context)
        * [work: add `Desktop`, `Documents`, `Downloads`, ?`Pictures`]
    * Remove everywhere (?)
    * USB/SD: no
* Google Drive:
    * Sync My Drive (all) (?)

[google-b-s]: https://www.google.com/drive/download/

### [Dropbox][dropbox]

[Download][dropbox-dl]

* -> System Preferences -> Extensions -> Finder Extensions: allow
* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
* General:
    * Start on startup
    * Enable Finder integration
* Account
* Import:
    * No Photos

[dropbox]: https://www.dropbox.com/
[dropbox-dl]: https://www.dropbox.com/install

## UI Tools and Tweaks

### [uBar][ubar] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[ubar]: https://brawersoftware.com/products/ubar

### [Witch][witch] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[witch]: https://manytricks.com/witch/

### [BetterTouchTool][btt] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[btt]: https://folivora.ai/

### [Rectangle][rectangle]

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[rectangle]: https://rectangleapp.com/

### [Moom][moom] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

### [Amphetamine][amphetamine] (App Store)

* Don't show message
* Don't show in Dock
* General:
    * Quick-Start: right click
    * Launch at login
    * Hide in Dock
* Session Defaults:
    * Default Duration: 3 hours
    * Battery:
        * End if below 10%
        * Prompt
    * Power Adapter:
        * Ignore when connected
* (Triggers)
* Hotkeys:
    * Start/End: `ctrl-opt-cmd-A`
    * If active, end
* Appearance:
    * Icon: Eye (or Tea Kettle? Pill 2?)
    * Lower opacity?
* (Exclude from uBar)

[amphetamine]: https://apps.apple.com/us/app/amphetamine/id937984704

### [Muzzle][muzzle]

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow

[muzzle]: https://muzzleapp.com/

### [iStat Menus][istat] ($)

See [iStat Menus Setup][istat-setup]

[istat]: https://bjango.com/mac/istatmenus/
[istat-setup]: istat.md

### [Bartender][bartender] ($)

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
* Menu Items: (see bottom)
* General:
    * Launch at login
* License

[bartender]: https://www.macbartender.com/

## General Utilities

### [Kap][kap]

* -> System Preferences -> Security &P -> Privacy -> Screen Recording: allow
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

### [AppCleaner][appcleaner]

* SmartDelete: on (?)
* Updates: check automatically

[appcleaner]: https://freemacsoft.net/appcleaner/

### [Suspicious Package][suspicious-package]

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

[disk-inventory-x]: http://www.derlien.com/

### [DaisyDisk][daisydisk] ($)

Download from main site or [App Store][daisydisk-app-store]

* License

[daisydisk]: https://daisydiskapp.com/
[daisydisk-app-store]: https://apps.apple.com/app/daisydisk/id411643860

### [Wireshark][wireshark]

[wireshark]: https://www.wireshark.org/

## Browsers

### [Chrome][chrome]

[Extensions][chrome-extensions]

See [Chrome Setup][chrome-setup]

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow
    * Accessibility: allow

[chrome]: https://www.google.com/chrome/
[chrome-extensions]: https://chrome.google.com/webstore/category/extensions
[chrome-setup]: ../chrome.md

### [Firefox][firefox]

[Add-ons][firefox-add-ons]

[Extensions][firefox-extensions]

See [Firefox Setup][firefox-setup]

[firefox]: https://www.mozilla.org/en-US/firefox/new/
[firefox-add-ons]: https://addons.mozilla.org/en-US/firefox/
[firefox-extensions]: https://addons.mozilla.org/en-US/firefox/extensions/
[firefox-setup]: ../firefox.md

## Messaging and VC

### [Franz][franz]

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow
* Account
* General:
    * Don't launch on start
    * Don't keep in background
    * Don't show in system tray
* Advanced:
    * No spell checking?
* Services:
    * Messenger, Hangouts, Telegram, Skype, Discord, Slack, Steam

[franz]: https://meetfranz.com/

### ([Telegram][telegram]? (in Franz instead?))

[telegram]: https://telegram.org/

### ([Signal][signal]?)

[signal]: https://signal.org/en/

### [Skype][skype] (in Franz instead?)

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow

[skype]: https://www.skype.com/en/

### ([Discord][discord]? (in Franz instead?))

[discord]: https://discord.com/

### [Slack][slack] (optional App Store; in Franz instead?)

[Download - direct][slack-dl]

[Download - App Store][slack-app-store]

(preferences are per-workspace)

(sign into workspaces)

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow
    * Accessibility: allow
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

[slack]: https://slack.com/
[slack-dl]: https://slack.com/downloads/
[slack-app-store]: https://apps.apple.com/app/slack/id803453959

### [Zoom][zoom]

[Download][zoom-dl]

* -> System Preferences -> Security &P -> Privacy:
    * Camera: allow
    * Microphone: allow
    * Accessibility: deny
* Share Screen:
    * Don't silence notifications (if using Muzzle)

[zoom]: https://explore.zoom.us/meetings
[zoom-dl]: https://zoom.us/download#client_4meeting

## Media

### [Spotify][spotify]

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

[spotify]: https://www.spotify.com/us/

### [Amazon Music][amazon-music]

[Download][amazon-music-dl]

* Advanced:
    * Don't launch on startup

[amazon-music]: https://www.amazon.com/music
[amazon-music-dl]: https://www.amazon.com/Amazon-Music-Apps/b?ie=UTF8&node=2658409011

### [iTunes][itunes]

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

[itunes]: https://www.apple.com/itunes/

### [Kindle][kindle]

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
* No dictionary
* No crash reports (?)
* (rename and add shared libraries)
* (download books)

[kindle]: https://www.amazon.com/kindle-dbs/fd/kcp

### [XnViewMP][xnviewmp]

* General:
    * General:
        * Startup directory: Last (default) (?)
* Interface:
    * Keyboard:
        * ESC quits: Never (default) (?)

[xnviewmp]: https://www.xnview.com/en/xnviewmp/

## Documents and Productivity

### [Pages][pages] (App Store)

* General:
    * New: Blank (?)
    * Author
* Auto-Correction:
    * No auto spelling
    * No auto caps
    * No Link style?
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
    * No Link style?
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
    * No Link style?
    * No smart quotes?
    * Replacements on (?)

[keynote]: https://www.apple.com/keynote/

### [Office][ms-office]

[ms-office]: https://www.office.com/

### [OneNote][onenote] (App Store)

[Download][onenote-dl]

* -> System Preferences -> Extensions -> Share Menu: on
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

[macvim]: https://macvim-dev.github.io/macvim/

### [Bluefish][bluefish]

[bluefish]: http://bluefish.openoffice.nl/index.html

### [VSCode][vscode]

[Extensions][vscode-extensions]

See the [VSCode Setup][vscode-setup] directory

* Create symlink:

```shell
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

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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

[iterm2]: https://iterm2.com/

### [Xcode][xcode] (App Store)

[Download - App Store][xcode-app-store]

* incl. additional components, command-line tools
* `xcode-select --install` after OS upgrade
* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow

[xcode]: https://developer.apple.com/xcode/
[xcode-app-store]: https://apps.apple.com/us/app/xcode/id497799835

### [Homebrew][homebrew]

Run from the [Unix Setup][unix-setup] directory:

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

[homebrew]: https://brew.sh/

### General Setup

See the [Unix Setup][unix-setup] directory

* dotfiles, incl. dotfile and `~/.to_back_up` links
* add `~/.to_back_up` to Google Backup
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
    ssh-add -K "$i"  # absolute path
done
```

* add `~/.ssh` to SpiderOak One (depending)

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

* follow directions in [Unix Account Setup][unix-account-setup]
* install GPG Suite, for GUI
    * (if desired; updates may will overwrite config files)
    * (may not automatically pick up new keys?)
* (put our lines at the top of the config files, with a blank before the suite
  ones?)

#### Option 2 ([GPG suite][gpg-suite])

```shell
umask 022
brew uninstall --force gnupg pinentry
umask 077
```

* install GPG Suite
* create a key
    * use RSA/RSA 4096, no expiration, the same name and email as
      for git, and comment `HOSTNAME -> GitHub`
    * see [Unix Account Setup][unix-account-setup]

[gpg-suite]: https://gpgtools.org/

#### Either way

* sign something (e.g. `git -s -u KEY_ID`, then mash keys and hit `ctrl-d`);
  check 'Save in Keychain' (or click 'Always Allow', whichever appears)
* -> System Preferences -> GPG Suite -> Settings: (Default Key)
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

[unix-setup]: ../unix-common/
[unix-account-setup]: ../unix-common/account-setup.psh

## Gaming

### [Steam][steam]

[Download][steam-dl]

* -> System Preferences -> Security &P -> Privacy -> Accessibility: allow
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
* SpiderOak One
* FortiClient
* PIA
* WiFi
* ToothFairy
* SoundSource: apps, output, input, main
* Blue Sherpa
* Logitech Gaming Software (Hide, ?Show for updates)
* YubiSwitch (Hide, ?Show for updates)
* (AirPlay) (Hide, ?Show for updates)
* iStat Menus: CPU, Mem, SSD, Net, Sen
* iStat Menus: Battery(s), Time (both - Always Show?)
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
* iTunes / Apple Music, Amazon Music, Spotify, etc.
* Skype, Zoom, Franz, Slack

Telegram? (in Franz?)
Signal?
Discord? (in Franz?)

* OneNote
* Chrome, Firefox
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

See [Catalina Notes][catalina-notes]

[catalina-notes]: catalina.txt
