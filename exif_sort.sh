#!/usr/bin/env bash
#set -x
for i in $(ls -1 *.jp*)
  do identify -verbose $i | awk -F:  '/exif:DateTime:/{print $3 " " $4}' | while read YEAR MONTH; do
    if [ -n "$YEAR" ]; then 
      echo "cp -a ${i} ${YEAR}/${MONTH}/"
    fi
  done
done