#!/usr/bin/env bash

# NOTE: must be run directly, not with (e.g.) 'bash git-check.sh'

diff \
    <(cat "$(dirname "$0")"/{git-config.sh,git-aliases.sh} | \
        sed -e 's/^ *//' -e 's/ *#.*$//' -e "s@\~/@${HOME}/@" | \
        sed '/\\$/ {N;s/\\\n//;}' | grep '^git config --global ' | \
        grep -v ' --unset ' | sed -e 's/^git config --global //' -e 's/ /=/' | \
        tr -d "'" | grep -v '^alias.faketempalias=') \
    <(git config --global --list)
