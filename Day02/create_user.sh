#!/bin/bash

read -p "Enter username:" userName
echo "You Entered $userName"

#Adding User
sudo useradd -m $userName
echo "New User Added"
