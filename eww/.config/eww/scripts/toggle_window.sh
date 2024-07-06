#!/bin/bash

window_name=$1
is_shown=$2

action=""
if [[ $is_shown = "true" ]]
then
    action="open"
else
    action="close"
fi

/home/zilq/tools/eww/target/release/eww update show_$window_name=$is_shown
/home/zilq/tools/eww/target/release/eww $action $window_name
