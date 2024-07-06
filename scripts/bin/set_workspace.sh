#!/bin/bash

workspace=$1;

bspc desktop -f $workspace;

workspaces=`/home/zilq/.config/eww/scripts/workspaces.sh`;

eww update workspaces=$workspaces;
