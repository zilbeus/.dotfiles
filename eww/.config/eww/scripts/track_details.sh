#!/bin/bash

artist=`playerctl metadata --player=spotify | grep "^spotify xesam:artist" | tr -s ' ' | cut -d ' ' -f 3-`;
title=`playerctl metadata --player=spotify | grep "^spotify xesam:title" | tr -s ' ' | cut -d ' ' -f 3-`;
album=`playerctl metadata --player=spotify | grep "^spotify xesam:album\s" | tr -s ' ' | cut -d ' ' -f 3-`;
cover_art_url=`playerctl metadata --player=spotify | grep "^spotify mpris:artUrl" | tr -s ' ' | cut -d ' ' -f 3-`;

current_cover_art_url=`/usr/bin/cat /tmp/album_art_url`;
if [[ $current_cover_art_url != $cover_art_url ]]
then
    echo $cover_art_url > /tmp/album_art_url;
    curl $cover_art_url --output /tmp/album_art;
fi

echo "{\"artist\": \"$artist\",\"title\": \"$title\",\"album\": \"$album\",\"art_url\": \"$cover_art_url\"}"

