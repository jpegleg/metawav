#!/bin/bash
# Read the configuration files and write them to a log... for now.
mkdir -p ~/wav-archive > /dev/null
mkdir -p ~/wav-log > /dev/null
mkdir -p ~/wav-json > /dev/null
e

function readconf () {
echo "$(date) Metawav - Reading your JSON files in ~/wav-archive/.log/"
for x in $(ls ~/wav-json/*.[j-J][s-S][o-O][n-N]); do
   echo "Doing validation on $x" >> ~/wav-log/run.log
   echo $(date) >> ~/wav-log/run.log
   cat "$x" >> ~/wav-log/run.log
done
}
# This is the most simple way to do this part. Just use the options passed to specify the metadata to append.

function append () {
for x in $(ls ~/wav-archive/ ); do
  echo $(date +'%m%d%Y') >> ~/wav-log/run.log;
  echo "Appending $x" >> ~/wav-log/run.log;
  cd ~/wav-archive/
  y=$(cat "$x" ~/wav-json/"$1")
  echo "${y[@]}" > "$x".tmp &&
  mv "$x".tmp "$x"
done
}

# More functions and some kind of logic sequence will happen some day.
# For now, simple.

readconf &&

append
