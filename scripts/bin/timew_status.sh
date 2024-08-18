status=$(timew)

if [[ $status = "There is no active time tracking." ]]
then
    echo "not tracking"
    exit 1
fi

task=$(timew | head -n 1 | cut -d '"' -f 2)
elapsed=$(timew | tail -n 1 | xargs echo -n | cut -d ' ' -f 2 | cut -d ':' -f 1,2)

echo "$task - $elapsed"
