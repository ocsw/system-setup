#!/usr/bin/env bash

diff \
    <(sed 's/^ *//' git-config.sh | \
        sed 's/ *#.*$//' | sed '/\\$/ {N;s/\\\n//;}' | sed "s@\~/@${HOME}/@" | \
        grep '^git config --global ' | sed 's/^git config --global //' | \
        sed 's/ /=/' | tr -d "'") \
    <(git config --global --list)
