free -h | head -n 2 | tail -1 | awk -v fmt="%s / %s\n" '{printf fmt, $3, $2}'
