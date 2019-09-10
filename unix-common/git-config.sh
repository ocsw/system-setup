#!/usr/bin/env bash

# NOTE: must be run directly, not with (e.g.) 'bash git-config.sh'


############
# identity #
############

# fence these so we can re-run this file without breaking anything
if ! git config --global --get user.name > /dev/null; then
    git config --global user.name 'Danielle Zephyr Malament'
fi
if ! git config --global --get user.email > /dev/null; then
    git config --global user.email danielle.malament@gmail.com
fi
if ! git config --global --get user.signingkey > /dev/null; then
    # not necessary if the default key is the one you want
    git config --global user.signingkey KEY_ID
fi


####################
# command settings #
####################

#
# core
#
git config --global core.pager 'less -F'
git config --global core.excludesfile ~/.gitignore_global
# for GUI systems
if ! grep '^\.vscode$' ~/.gitignore_global > /dev/null 2>&1; then
    echo '.vscode' >> ~/.gitignore_global
fi

#
# formatting
#
# for logging aliases; see git-aliases.sh
git config --global pretty.oneline-name \
    '%C(yellow)%h%Cgreen%d %Creset%s%Cblue [%cn]'
git config --global pretty.oneline-name-nl \
    '%n%C(yellow)%h%Cgreen%d %Creset%s%Cblue [%cn]'

#
# GPG signing
#
git config --global commit.gpgsign true
git config --global tag.forcesignannotated true


###########
# aliases #
###########

# broken out of git-config.sh so the aliases can be (re)applied separately
"$(dirname "$0")/git-aliases.sh"
