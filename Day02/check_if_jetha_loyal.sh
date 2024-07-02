#!/bin/bash

<<disclaimer
This is jsut for infotainment purpose

disclaimer

read -p "Enter the Name of Women: " Woman
read -p "Jetha ka pyaar %" pyaar
if [[ $Woman == "Daya" || $Woman == "daya" ]];
then
	echo "Jeths is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "Jetha is loyal"
else
	echo "Jetha is not Loyal"
fi
