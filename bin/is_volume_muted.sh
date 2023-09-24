#!/bin/bash

is_muted=`pactl get-sink-mute @DEFAULT_SINK@ | cut -d ' ' -f2`;
if [[ $is_muted = "yes" ]]
then
    is_muted="true";
else
    is_muted="false";
fi

echo $is_muted

