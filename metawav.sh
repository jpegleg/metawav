#!/bin/bash
# Read the configuration files and parse them to ensure they are valid JSON.

function readconf () {
echo "$(date) Metawav - Reading your JSON files in ~/wav-archive/.log/"
for x in $(ls ~/wav-archive/.log/*.[j-J][s-S][o-O][n-N]); do
   echo "Doing validation on $x" >> ~/wav-archive/.log/run.log
   echo $(date) >> ~/wav-archive/.log/run.log
   cat "$x" >> ~/wav-archive/.log/run.log
done
}
# This is the most simple way to do this part. Just use the options passed to specify the metadata to append.

function append () {
for x in $(ls ~/wav-archive/ ); do
  echo $(date +'%m%d%Y') >> ~/wav-archive/.log/run.log;
  echo "Appending $x" >> ~/wav-archive/.log/run.log;
  cat ~/wav-archive/.log/"$@" >> "$x";
done
}

# More functions and some kind of logic sequence will happen some day.
# For now, simple.

readconf

append
