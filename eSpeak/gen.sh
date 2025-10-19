#!/bin/sh
dir="$(dirname "$0")"

for i in $(cat "$dir/reclist.txt")
do	echo "$i"
	espeak -P 0 -p 99 -v Japanese -s 100 -g 0 -w "$dir/temp/$i.wav" "$i"
done

for i in "$dir/temp/"*.wav
do	ffmpeg -i "$i" -ar 44100 -y "$dir/release/eSpeak/eSpeak_single/${i##*/}"
	rm "$i"
done
