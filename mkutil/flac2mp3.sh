#!/bin/bash

for a in ./*.flac; do
  ffmpeg -i "$a" -b:a 196k "${a[@]/%flac/mp3}"
done
