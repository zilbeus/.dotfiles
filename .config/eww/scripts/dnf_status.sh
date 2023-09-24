#!/bin/bash

nr_of_updates=`dnf check-update | grep -Ec ' updates$'`;
updates_available="";

echo $nr_of_updates;
