if [[ $(playerctl -l | grep -q spotify) ]]; then
    echo "N/A"
fi

artist=$(playerctl -p spotify metadata artist)
title=$(playerctl -p spotify metadata title)

echo "$artist - $title"
