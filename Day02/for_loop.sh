#!/bin/bash

#This is for and While loops

#creating demo folders using forloop

<< task 
1st argument will be the folder name
2nd will be the starting range
3rd will be the endRange
task

for (( num=$2 ; num<=$3; num++ ))
do
	mkdir "$1$num"
done

