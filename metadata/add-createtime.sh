#!/bin/bash

# ファイルのCreateTimeをEXIFに反映する

for file in $@; do
    echo $file
    date="$(date +"%Y:%m:%d %H:%M:%S" -r $file)"
    nano="$(date +"%N" -r $file)"
    exiftool -SubSecCreateDate="${date}.${nano::6}+09:00" \
             -SubSecDateTimeOriginal="${date}.${nano::6}+09:00" "$file"
done
