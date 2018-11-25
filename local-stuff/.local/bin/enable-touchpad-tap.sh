#!/bin/bash

if [ "$(which xinput)"  == "" ]; then
    echo "Please install xinput"
    exit 1
fi

IFS=$'\n'
for device in $(xinput --list); do
    if [ "$(echo "$device" | grep -i "touchpad")" != "" ]; then
        echo "Found: $device"

        id=$(echo "$device" | grep -o "id=[0-9]*" | sed 's/id=//')

        for prop in $(xinput list-props "$id"); do
            if [ "$(echo "$prop" | grep -i "tapping enable")" != "" ]; then
                echo "Prop: $prop"

                prop_id=$(echo "$prop" | grep -o "([0-9]*)" | sed 's/[()]//g')
                command="xinput set-prop $id $prop_id 1"

                echo "Exec'ing: $command"
                eval "$command"
            fi
        done
    fi

done
