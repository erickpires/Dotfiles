#!/bin/bash

current=$(xbacklight -get)

while [[ 1 ]]; do
    new=$(xbacklight -get)

    if [[ $new != $current ]]; then
        value=${new%.*}
        echo $value
    fi

    current=$new

    sleep 0.1
done
