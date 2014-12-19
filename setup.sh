#!/bin/bash

# METAWAV installer by Keegan Bowen.

echo "Checking for needed files..."
ls metawav.sh &&
ls template.metawav &&
echo "...got em." &&

echo "Installing..." &&
cp ./metawav.sh /usr/bin/metawav &&
mkdir -p $HOME/wav-archive/log &&
cp template.metawav $HOME/wav-archive/ &&

echo "Ready to rock." 
