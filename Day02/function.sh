#!/bin/bash

<<disclaimer
This is jsut for infotainment purpose

disclaimer

# This is Function Declaration/defination

function is_loyal() {
read -p "Enter the Name of Women: " Woman
read -p "$1  ka pyaar %" pyaar
if [[ $Woman == "Daya" || $Woman == "daya" ]];
then
        echo "$1 is loyal"
elif [[ $pyaar -ge 100 ]];
then
        echo "$1 is loyal"
else
        echo "$1 is not Loyal"
fi
}
# This is Function call

is_loyal "tom"  
