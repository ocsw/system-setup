#!/usr/bin/env bash

# NOTE: must be run directly, not with (e.g.) 'bash git-config.sh'

# config names must be all-lowercase, and there can only be one space between
# names and values, to match git output in git-check.sh


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
    # GPG signing (old)
    # not necessary if the default key is the one you want
    #git config --global user.signingkey KEY_ID

    # SSH signing (new)
    git config --global user.signingkey ~/.ssh/github_ocsw_signing_ed25519.pub
fi


####################
# command settings #
####################

#
# core
#
git config --global core.excludesfile ~/.gitignore_global

#
# pager, diff, colors
#
# trailing comments are for git-check.sh
if hash diff-so-fancy > /dev/null 2>&1; then
    # use 'git --no-pager' to bypass
    git config --global core.pager 'diff-so-fancy | less --tabs=4 -FRX' #DSF
    #
    git config --global interactive.difffilter 'diff-so-fancy --patch' #DSF
    #
    # git log's commit header width
    git config --global diff-so-fancy.rulerwidth 47             #DSF
    git config --global diff-so-fancy.useunicoderuler false     #DSF
    git config --global diff-so-fancy.stripleadingsymbols false #DSF
    git config --global diff-so-fancy.markemptylines false      #DSF
else
    git config --global core.pager 'less --tabs=4 -FRX' #NO_DSF
fi
#
git config --global color.diff.commit 'brightyellow bold'
git config --global color.diff.meta 'brightcyan bold'
git config --global color.diff.frag 'brightmagenta bold'
git config --global color.diff.func 'brightmagenta bold'
git config --global color.diff.old 'brightred bold'
git config --global color.diff.new 'brightgreen bold'
git config --global color.diff.whitespace 'red reverse'
#
# used by diff-so-fancy / diff-highlight (and others?)
git config --global color.diff-highlight.oldnormal 'brightred bold'
git config --global color.diff-highlight.oldhighlight 'brightred bold 52'
git config --global color.diff-highlight.newnormal 'brightgreen bold'
git config --global color.diff-highlight.newhighlight 'brightgreen bold 22'

#
# formatting
#
# for logging aliases; see git-aliases.sh
git config --global pretty.oneline-name \
    '%C(yellow)%h%Cgreen%d %Creset%s%Cblue [%cn]'
git config --global pretty.oneline-name-nl \
    '%n%C(yellow)%h%Cgreen%d %Creset%s%Cblue [%cn]'

#
# default branch
#
git config --global init.defaultbranch main

#
# fast-forward only, for safety
#
git config --global pull.ff only
git config --global merge.ff only

#
# GPG/SSH signing
#
git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global tag.forcesignannotated true

#
# new setting in 2.37 that means you don't need extra options (or aliases) for
# pushing a new branch
#
git config --global push.autosetupremote true


###########
# aliases #
###########

# broken out of git-config.sh so the aliases can be (re)applied separately
"$(dirname "$0")/git-aliases.sh"
