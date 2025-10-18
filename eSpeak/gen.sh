#!/bin/sh
dir="$(dirname "$0")"
espeak -P 0 -p 99 -v Japanese -s 100 -f "$dir/reclist.txt" -g 5 -w "$dir/release/eSpeak/eSpeak_single/all.wav"
espeak -P 0 -p 99 -v Japanese -s 100 -f "$dir/reclist_append.txt" -g 5 -w "$dir/release/eSpeak/eSpeak_single/append.wav"
