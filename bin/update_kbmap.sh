#!/bin/bash

current_layout=`setxkbmap -query | grep layout | tr -s ' ' | cut -d ' ' -f2`
new_layout=${current_layout}

if [[ $current_layout = "us" ]]
then
    new_layout="ee"
fi

if [[ $current_layout = "ee" ]]
then
    new_layout="ru"
fi

if [[ $current_layout = "ru" ]]
then
   new_layout="us"
fi

setxkbmap -layout $new_layout
eww update kb_layout=$new_layout
