#!/bin/bash

api_key=$(</home/zilq/.owm-key);
location='Tallinn';
units='metric';
base_url='https://api.openweathermap.org/data/2.5/weather';

curl -X GET "${base_url}?q=${location}&appid=${api_key}&units=${units}";
