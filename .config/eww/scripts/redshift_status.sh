#!/bin/bash

pid=`pidof redshift`;
is_enabled="";

if [[ $pid = "" ]]
then
    is_enabled="false";
else
    is_enabled="true";
fi

echo $is_enabled;
