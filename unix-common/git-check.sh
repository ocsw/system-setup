#!/usr/bin/env bash

# NOTE: must be run directly, not with (e.g.) 'bash git-check.sh'

diff \
    <(cat "$(dirname "$0")"/{git-config.sh,git-aliases.sh} | sed 's/^ *//' | sed 's/ *#.*$//' | \
        sed '/\\$/ {N;s/\\\n//;}' | sed "s@\~/@${HOME}/@" | \
        grep '^git config --global ' | grep -v ' --unset ' | \
        sed 's/^git config --global //' | sed 's/ /=/' | tr -d "'") \
    <(git config --global --list)
