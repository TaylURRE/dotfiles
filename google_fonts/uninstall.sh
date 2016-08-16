#!/bin/bash

clear
echo "Un-Installing all Google Web Fonts onto your Mac"
echo "Downloading font list..."
cd ~/Documents/

curl -L https://raw.githubusercontent.com/rod/dotfiles/master/google-fonts/fonts.txt -o fonts.txt

while read font; do
  rm "/Library/Fonts/$font"
done <list-of-fonts.txt

rm -rf list-of-fonts.txt
echo "All done! All Google Web Fonts removed."
