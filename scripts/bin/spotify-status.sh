if ! command -v playerctl &> /dev/null
then
    echo "N/A"
    exit 1
fi

if [[ $(playerctl -l | grep -q spotify) ]]; then
    echo "N/A"
    exit 1
fi

artist=$(playerctl -p spotify metadata artist)
title=$(playerctl -p spotify metadata title)

echo "$artist - $title"
