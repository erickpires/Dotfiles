#!/bin/bash

if [[ -z $(which stow) ]]; then
    echo "Please install 'stow'"
    exit 1
fi

for dir in *; do
    if [[ -d "$dir" ]]; then
        echo "stow'ing '$dir'"
        stow "$dir"
    fi
done
