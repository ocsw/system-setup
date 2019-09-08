#!/usr/bin/env bash

diff \
    <(sed 's/^ *//' account-setup.txt | \
        sed 's/ *#.*$//' | sed '/\\$/ {N;s/\\\n//;}' | sed "s@\~/@${HOME}/@" | \
        grep '^git config --global ' | sed 's/^git config --global //' | \
        sed 's/ /=/' | tr -d "'") \
    <(git config --global --list)
