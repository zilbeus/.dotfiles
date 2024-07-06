#!/bin/bash

window_xid=`xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2`;
window_name=`xprop -id $window_xid _NET_WM_NAME | cut --delimiter='"' -f 2`;

echo $window_name;
