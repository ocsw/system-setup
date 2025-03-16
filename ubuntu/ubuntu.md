#

sudo pro attach TOKEN

may want to start by installing git and following
unix-common/account-setup.txt to be able to pull repos

/etc/apt/sources.list:
  see ubuntu-sources.list; replace RELEASE with precise, quantal, etc.

apt-get update
(may need, e.g.:
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 16126D3A3E5C1192
and rerun)
apt-get install `cat ubuntu-pkg-common`
apt-get install `cat ubuntu-pkg-desktop`  # if relevant
apt-get install `cat ubuntu-pkg-server`  # if relevant

see also ubuntu-opt-*, ubuntu-pkg-q, python.txt

some of the above will prompt for settings/questions:
  postfix (config; see below)

apt-get upgrade
apt-get install linux-generic linux-headers-generic linux-image-generic
apt-get autoremove

clock, ntpd
accounts, incl. sudo, unix-common/account-setup.txt, dotfiles, perms
network (fqdn, ip/nm/gw*, dns*, /etc/hosts, dhcp)
  * for desktop, use NetworkManager; for server, /etc/network/interfaces:
    auto eth0
    iface eth0 inet static
        address 192.168.1.5
        netmask 255.255.255.0
        network 192.168.1.0
        broadcast 192.168.1.255
        gateway 192.168.1.1
        # dns-* options are implemented by the resolvconf package, if installed
        dns-nameservers 192.168.1.1 71.250.0.12 71.242.0.12
        dns-search lan
firewall
  add scripts to /root/bin
  add ~/bin/ to path (e.g. in /etc/login.defs)
  cp /root/bin/iptablesrestore.sh /etc/network/if-pre-up.d/iptablesrestore
  chmod 700 /etc/network/if-pre-up.d/iptablesrestore
  add rules and run /root/bin/iptablessave.sh
fwknop
automatic updates
  /etc/apt/apt.conf.d/50unattended-upgrades:
    Unattended-Upgrade::Allowed-Origins {
            "${distro_id}:${distro_codename}-security";
    };
    Unattended-Upgrade::Mail "root";
  /etc/apt/apt.conf.d/20auto-upgrades:
    APT::Periodic::Unattended-Upgrade "1";
filesystems
move/symlink /data/{home,mail,mysql,www}
(reorder /etc/password, shadow, group?)
postfix config, aliases
(update apparmor for home?)
git config --global color.ui true
git config --global user.name "foo bar"
git config --global user.email foo@bar.com
git config --global push.default simple
aeolus backups

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
        * \[work: only `Books`, `Music`, `Pictures`]
    * Files:
        * `.to_back_up/*`, especially `*.local`, except for history files and
          `.hstr_favorites`
        * \[work: skip]

[spideroak-one]: https://spideroak.com/one/
[spideroak-one-dl]: https://spideroak.com/opendownload/

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

### SSH

* Consolidate and order the config file from most to least specific
* Add the keys to the agent, and the passphrases to the keychain:

    ```shell
    for i in ~/.ssh/*_{dsa,ecdsa,ed25519,rsa}; do
        ssh-add --apple-use-keychain "$i"  # absolute path
    done
    ```

* Add `~/.ssh` to SpiderOak One (depending)

### Permissions

(in most cases)

```shell
chmod -R go-rwx ~
```

[unix-setup]: ../unix-common/
[unix-account-setup]: ../unix-common/account-setup.psh

ack
aptitude
aptitude-doc-en
arping
athena-jot
atop
autoconf
autoconf-doc
automake
bash
bash-completion
bash-doc
binutils
binutils-doc
bison
bison-doc
build-essential
bzip2
cookiecutter
coreutils
cpp
cpp-doc
curl
dash
dialog
dkms
doc-base
dpkg
dpkg-dev
duplicity
emacs
ethtool
ffmpeg
file
fish
flex
flex-doc
fortune-mod
fortunes
fping
fq
fq
fzf
g++
gawk
gcc
gcc-doc
gcc-multilib
gdb
gdb-doc
gdbserver
gettext
gettext-doc
gh
git
git-doc
git-flow
gnupg
graphicsmagick
hexcurse
hexdiff
hexedit
hey
hstr
htop
httpie
iftop
imagemagick
imagemagick-doc
ipcalc
iperf
ipset
ipv6calc
ispell
ispell
jo
jq
jsonnet
ksh
lftp
libfribidi-bin
libtool
libtool-doc
linux-libc-dev
lolcat
lsof
lynx
m4
m4-doc
make
make-doc
manpages-dev
mmv
mosh
most
nano
ncdu
ncftp
net-tools
ngrep
nmap
openntpd
p7zip
parallel
perl
pkg-config
prettyping
procps
progress
pssh
pv
pwgen
rdiff-backup
recode
ripgrep
rlwrap
rsync
screen
screenfetch
sed
shellcheck
silversearcher-ag
smartmontools
socat
speedtest-cli
sqlite3
sqlite3-doc
sqlite3-pcre
ssldump
sysstat
tcpdump
tcsh
telnet
tig
tmux
traceroute
tree
unison
universal-ctags
unzip
urlview
vim
vim-doc
vim-scripts
watch
wget
whois
xattr
yacc
zip
zsh
zsh-doc

grepmail
mailutils
mailutils-common
mailutils-doc
mailutils-mh
mutt
postfix
postfix-doc
postfix-pcre
procmail

black
flake8
ipython3
jupyter
mypy
mypy-doc
pep8
python-black-doc
python3
python3-dev
python3-doc

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

bashdb
bats-core
diff-so-fancy
go
golang-migrate
golangci-lint
grpcurl
ijq
lazygit
no-more-secrets
pup
pyenv
pyenv-virtualenv
spark
yq

*protobuf
*broot

mtr
openvpn
mysql-client
postgresql-client
graphite2
harfbuzz

resolvconf

Get more security updates through Ubuntu Pro with 'esm-apps' enabled:
  python3-jupyter-core gsasl-common imagemagick jupyter libjs-jquery-ui
  libavdevice58 imagemagick-doc fish ffmpeg libopenexr25 imagemagick-6-doc
  python3-scipy libpostproc55 libmagickcore-6.q16-6-extra libgsasl7
  libavcodec58 traceroute libmagickwand-6.q16-6 jupyter-core libavutil56
  imagemagick-6.q16 libswscale5 libmagickcore-6.q16-6 libswresample3
  imagemagick-6-common libavformat58 fish-common libavfilter7
Learn more about Ubuntu Pro at https://ubuntu.com/pro
