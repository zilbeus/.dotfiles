#!/bin/bash

eww update windows_hidden=true;
bspc node "$(bspc query -N -d)" -g hidden;
