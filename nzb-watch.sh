#!/usr/bin/env bash

dir=/home/justin/Downloads/
target=/home/justin/Dropbox/nzb-watch/

inotifywait -m -q "$dir" --format '%w%f' -e close_write |
    while read file; do
	EXT=${file##*.}
	if [ $EXT = "nzb" ]
	then
	  mv $file "$target"
	fi
     done
