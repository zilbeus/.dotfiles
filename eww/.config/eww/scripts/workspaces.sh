#!/bin/bash

ws_1_nr_of_windows=`bspc query -N -d 1 | wc -l`;
ws_2_nr_of_windows=`bspc query -N -d 2 | wc -l`;
ws_3_nr_of_windows=`bspc query -N -d 3 | wc -l`;
ws_4_nr_of_windows=`bspc query -N -d 4 | wc -l`;

ws_1_empty="true";
ws_2_empty="true";
ws_3_empty="true";
ws_4_empty="true";

if [[ $ws_1_nr_of_windows -gt 0 ]]
then
    ws_1_empty="false";
fi

if [[ $ws_2_nr_of_windows -gt 0 ]]
then
    ws_2_empty="false";
fi

if [[ $ws_3_nr_of_windows -gt 0 ]]
then
    ws_3_empty="false";
fi

if [[ $ws_4_nr_of_windows -gt 0 ]]
then
    ws_4_empty="false";
fi

focused_ws=`bspc query -D -d --names`;

ws_1_focused="false";
ws_2_focused="false";
ws_3_focused="false";
ws_4_focused="false";

if [[ $focused_ws -eq 1 ]]
then
    ws_1_focused="true";
fi

if [[ $focused_ws -eq 2 ]]
then
    ws_2_focused="true";
fi

if [[ $focused_ws -eq 3 ]]
then
    ws_3_focused="true";
fi

if [[ $focused_ws -eq 4 ]]
then
    ws_4_focused="true";
fi

ws_1="{\"ws_name\":1,\"is_empty\":${ws_1_empty},\"is_focused\":${ws_1_focused}}";
ws_2="{\"ws_name\":2,\"is_empty\":${ws_2_empty},\"is_focused\":${ws_2_focused}}";
ws_3="{\"ws_name\":3,\"is_empty\":${ws_3_empty},\"is_focused\":${ws_3_focused}}";
ws_4="{\"ws_name\":4,\"is_empty\":${ws_4_empty},\"is_focused\":${ws_4_focused}}";

echo "[${ws_1},${ws_2},${ws_3},${ws_4}]";
