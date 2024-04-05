#!/bin/bash

# 「みてね」は、SubSecXX タグが無いと、タイムスタンプを正しく認識してくれない
#
for file in $@; do
    echo $file
    date=$(exiftool -CreateDate "$file" | sed -e 's/^.* : //')
    opts=(
       "-SubSecCreateDate=${date}.000000+09:00"
       "-SubSecDateTimeOriginal=${date}.000000+09:00"
       "-SubSecModifyDate=${date}.000000+09:00"
    )
    exiftool "${opts[@]}" "$file"
done
