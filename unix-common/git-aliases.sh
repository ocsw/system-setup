#!/usr/bin/env bash

# NOTE: must be run directly, not with (e.g.) 'bash git-aliases.sh'

# Broken out of git-config.sh so the aliases can be (re)applied separately

# Config names must be all-lowercase, and there can only be one space between
# names and values, to match git output in git-check.sh


##########################
# Clear existing aliases #
##########################

# Remove the below aliases if they exist, so that when we re-add them, they
# will be in order; we also need to keep a fake alias in place so the alias
# section stays where it is in the config file (relative to includes, for
# example)
git config --global alias.faketempalias temp
sed -e 's/^ *//' -e 's/ *#.*$//' "$0" | grep '^git config --global alias\.' |
    awk '{print $4}' | grep -v '^alias\.faketempalias$' |
    while IFS= read -r alias; do
        git config --global --unset "$alias"
    done


###############
# Add aliases #
###############

#
# Meta
#
git config --global alias.h help
# (Not going to make 4 each of set, get, unset, list, edit)
git config --global alias.cf config  # local, or current
git config --global alias.cff 'config --file'
git config --global alias.cfg 'config --global'
git config --global alias.cfs 'config --system'
git config --global alias.cfo 'config --show-origin'
git config --global alias.cflo 'config -l --show-origin'
git config --global alias.la '!git config --global -l | grep ^alias | cut -c 7-'
git config --global alias.las \
    '!git config --global -l | grep ^alias | cut -c 7- | sort'
git config --global alias.lah '!git help -a | sed -e "1,/^Command aliases\$/d"'

#
# Repo management
#
git config --global alias.in init
git config --global alias.cl clone
git config --global alias.rem remote
# Prune obsolete remote tracking branches
git config --global alias.rempo 'remote prune origin'
# Track default branch on remote
git config --global alias.remho 'remote set-head origin -a'
# Leaving out fsck and gc (rarely used, to be used carefully, and hard to
# abbreviate)

#
# Branch and tag management
#
# NOTE: Don't use this if you need a branch name you can checkout back to!
# (This can give you things like '(HEAD detached at origin/master)'; use
# git-current-branch() instead in that case)
# See also https://stackoverflow.com/questions/6245570
git config --global alias.cur \
    '!git branch --no-color | sed -n "/^\* /  s/^..//p"'
# Prints the current branch, or fails with no output if we're not on a
# local branch (e.g. detached HEAD)
# See also https://stackoverflow.com/questions/6245570
git config --global alias.curb 'symbolic-ref --short -q HEAD'
# 'main or master?' - print the first one that exists in the repo
git config --global alias.mom '!{ git show-ref --verify "refs/heads/main" 2>/dev/null; git show-ref --verify "refs/heads/master" 2>/dev/null; } | head -1 | sed "s|^.*/||"'
git config --global alias.br branch
git config --global alias.bra 'branch -a'
git config --global alias.brdel 'branch -d'
git config --global alias.brdelf 'branch -D'
git config --global alias.co checkout
git config --global alias.cb 'checkout -b'
git config --global alias.back 'checkout -'
# switch is new in git 2.23
git config --global alias.sw switch
git config --global alias.swc 'switch -c'
git config --global alias.swd 'switch --detach'
git config --global alias.tagl 'tag -l'
git config --global alias.tagdel 'tag -d'
# Don't use -a (annotated and unsigned); it overrides tag.forcesignannotated,
# whereas using -m implies an annotated tag but allows it to be signed
# (Note: git 2.23 introduced tag.gpgsign, which overrides even -a, but it also
# prevents making lightweight (non-annotated) tags)
git config --global alias.tagm 'tag -m'
# shellcheck disable=SC2016
git config --global alias.tagnm '!sh -c "git tag \"$1\" -m \"$2\"" sh'

#
# Status, history, contents
#
git config --global alias.st status
git config --global alias.l log
git config --global alias.lg 'log --graph'
git config --global alias.lf 'log --numstat'  # files
git config --global alias.ld 'log --patch'  # diff
git config --global alias.ldh 'log --patch --diff-algorithm=histogram'  # diff
git config --global alias.ll 'log --oneline'
# See git-config.sh for formats
git config --global alias.lln 'log --pretty=oneline-name'
git config --global alias.llg 'log --pretty=oneline-name --graph'
git config --global alias.llf 'log --pretty=oneline-name-nl --numstat'  # files
git config --global alias.tree 'log --pretty=oneline-name --graph --all'
git config --global alias.rl reflog
git config --global alias.s show
git config --global alias.sh 'show --diff-algorithm=histogram'
git config --global alias.d diff
git config --global alias.dc 'diff --cached'
git config --global alias.dh 'diff --diff-algorithm=histogram'
git config --global alias.dhc 'diff --diff-algorithm=histogram --cached'
git config --global alias.patch '!git --no-pager diff --no-color'
git config --global alias.patchc '!git --no-pager diff --no-color --cached'
git config --global alias.patchh '!git --no-pager diff --no-color --diff-algorithm=histogram'
git config --global alias.patchhc '!git --no-pager diff --no-color --diff-algorithm=histogram --cached'
git config --global alias.g grep
git config --global alias.bl blame
git config --global alias.bi bisect
git config --global alias.bist 'bisect start'
git config --global alias.big 'bisect good'
git config --global alias.bib 'bisect bad'
git config --global alias.bin 'bisect new'
git config --global alias.bio 'bisect old'
git config --global alias.bisk 'bisect skip'
git config --global alias.biv 'bisect view'
git config --global alias.bil 'bisect log'
git config --global alias.birs 'bisect reset'
git config --global alias.birp 'bisect replay'

#
# Workstream management (stacks of commits; single commands)
#
git config --global alias.ft fetch
# Prune obsolete remote tracking branches
git config --global alias.ftp 'fetch -p'
git config --global alias.fta 'fetch --all'
git config --global alias.ftap 'fetch --all -p'
git config --global alias.pl pull
git config --global alias.pla 'pull --all'
git config --global alias.prb 'pull --rebase'
# shellcheck disable=SC2016
git config --global alias.prbm '!git pull --rebase origin $(git mom)'
git config --global alias.prbd 'pull --rebase origin develop'
git config --global alias.rb rebase
# shellcheck disable=SC2016
git config --global alias.rbm '!git rebase $(git mom)'
git config --global alias.rbd 'rebase develop'
git config --global alias.rba 'rebase --abort'
git config --global alias.rbc 'rebase --continue'
git config --global alias.rbi 'rebase -i'
# shellcheck disable=SC2016
git config --global alias.rbih '!sh -c "git rebase -i \"HEAD~$1\"" sh'
git config --global alias.mg merge
git config --global alias.mgn 'merge --no-ff'
git config --global alias.mga 'merge --abort'
git config --global alias.mgc 'merge --continue'
git config --global alias.cp cherry-pick
git config --global alias.cpe 'cherry-pick --edit'
git config --global alias.cpn 'cherry-pick --no-commit'
git config --global alias.cpa 'cherry-pick --abort'
git config --global alias.cpc 'cherry-pick --continue'
git config --global alias.rv revert
git config --global alias.rvf 'revert --no-edit'
git config --global alias.rvn 'revert --no-commit'
git config --global alias.rva 'revert --abort'
git config --global alias.rvc 'revert --continue'
git config --global alias.rrr rerere
git config --global alias.rrrs 'rerere status'
git config --global alias.rrrd 'rerere diff'

#
# Workstream management (stacks of commits; multiple commands)
#
# For rebase -i edits and merge conflicts
# Note: For an edit, staged changes will be automatically amended onto the
# previous commit; for a conflict, they will become the next commit
git config --global alias.arbc '!git add -A && git rebase --continue'
git config --global alias.amgc '!git add -A && git merge --continue'
git config --global alias.acpc '!git add -A && git cherry-pick --continue'
git config --global alias.arvc '!git add -A && git revert --continue'

#
# Editing (changes within a commit)
#
git config --global alias.ss stash
git config --global alias.ssl 'stash list'
git config --global alias.sss 'stash show'
git config --global alias.sssh 'stash show --diff-algorithm=histogram'
git config --global alias.ssm 'stash push -m'
git config --global alias.ssp 'stash pop'
git config --global alias.ssa 'stash apply'
git config --global alias.ssd 'stash drop'
git config --global alias.ssc 'stash clear'
# Leaving out mv and rm (too short to abbreviate), clean (dangerous and rarely
# used), and reset --hard, file-scope reset, file-scope checkout, and (new in
# git 2.23) restore (dangerous; see note about reset, below)
# Note:
# - reset --hard
#     - Source defaults to HEAD
#     - Destination is always the index and the working tree
# - File-scope reset
#     - Source defaults to HEAD
#     - Destination is always the index
# - File-scope checkout
#     - Source defaults to the index
#     - Destination is always the index and the working tree (or just the tree
#       if the source is the index)
# - restore (the below is correct as of 2.23)
#     - Source defaults to:
#         - The index if the destination is the working tree (like fs checkout)
#         - HEAD if the destination is the index (like fs reset)
#         - No default if the destination is both
#     - Destination defaults to the working tree (like fs checkout with default
#       source)
#     - Unlike checkout, it defaults to non-overlay mode (delete tracked files
#       that are not present in the source)

#
# Add -> commit -> push (single commands)
#
git config --global alias.ap 'add -p'
git config --global alias.af 'add --'
git config --global alias.aa 'add -A'
# Reset with -p or paths can't take a mode, but it only affects the index; the
# source defaults to HEAD, so without an explicit source, it acts like
# --mixed HEAD
git config --global alias.unap 'reset -p'  # default is like --mixed HEAD
git config --global alias.unaf 'reset --'  # default is like --mixed HEAD
git config --global alias.unaa reset  # default is --mixed HEAD
git config --global alias.ci commit
git config --global alias.cm 'commit -m'
git config --global alias.amendm 'commit --amend'
git config --global alias.amend 'commit --amend --no-edit'
git config --global alias.unci 'reset --soft HEAD~1'
git config --global alias.unca 'reset HEAD~1'  # default is --mixed
git config --global alias.ps push
git config --global alias.pst 'push --tags'
git config --global alias.pn 'push --set-upstream origin'
git config --global alias.pnh 'push --set-upstream origin HEAD'
git config --global alias.pf 'push --force-with-lease'
# Not sure having aliases (even limited ones) for reset is a good idea; it's a
# dangerous command, and you should be explicit and know what you're doing...

#
# Add -> commit -> push (multiple commands)
#
git config --global alias.acm '!git add -A && git commit -m'
git config --global alias.apf \
    '!git commit --amend --no-edit && git push --force-with-lease'
git config --global alias.aapf \
    '!git add -A && git commit --amend --no-edit && git push --force-with-lease'


#######################
# Clean up fake alias #
#######################

git config --global --unset alias.faketempalias
