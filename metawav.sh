#!/bin/bash

mkdir -p ~/wav-archive > /dev/null
mkdir -p ~/wav-log > /dev/null
mkdir -p ~/wav-json > /dev/null

template=$1

function readconf () {
echo "$(date) Metawav - Reading your JSON files in ~/wav-archive/.log/"
for x in $(ls ~/wav-json/*.[j-J][s-S][o-O][n-N]); do
   echo "Doing validation on $x" >> ~/wav-log/run.log
   echo $(date) >> ~/wav-log/run.log
   cat "$x" >> ~/wav-log/run.log
done
}

function append () {
for x in $(ls ~/wav-archive/ ); do
  echo $(date +'%m%d%Y%H%m%s') >> ~/wav-log/run.log;
  echo "Appending $x" >> ~/wav-log/run.log;
  cd ~/wav-archive/
  y=$(cat "$x" ~/wav-json/"$template")
  echo "${y[@]}" > "$x".tmp &&
  mv "$x".tmp "$x"
done
}

readconf

append
