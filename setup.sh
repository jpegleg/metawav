#!/bin/bash

# METAWAV installer by Keegan Bowen.

echo "Checking for needed files..."
ls metawav.sh &&
ls template.metawav.json &&
echo "...got em." &&

echo "Installing..." &&
cp ./metawav.sh /usr/bin/metawav &&
mkdir -p $HOME/wav-archive/ &&
mkdir -p $HOME/wav-json/ &&
mkdir -p $HOME/wav-log/ &&
cp template.metawav.json $HOME/wav-json/.log &&

echo "Ready to rock." 
