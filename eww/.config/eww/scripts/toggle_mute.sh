#!/bin/bash

is_muted=`pactl get-sink-mute @DEFAULT_SINK@ | cut -d ' ' -f2`;
new_mute_status="";

if [[ $is_muted = "yes" ]]
then
    new_mute_status="false";
else
    new_mute_status="true";
fi

pactl set-sink-mute @DEFAULT_SINK@ toggle;
eww update is_muted=$new_mute_status;
