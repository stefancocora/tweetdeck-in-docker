#!/bin/bash

wget http://www.tweetdeck.com/download/pc/latest -O /tmp/tweetdeck.msi
mkdir /tmp/tweetdeck-extract
#https://unix.stackexchange.com/questions/116748/how-to-fix-library-problem-with-mono-on-debian
wget "http://downloads.sourceforge.net/project/wine/Wine%20Mono/4.5.6/wine-mono-4.5.6.msi?r=http%3A%2F%2Fwiki.winehq.org%2FMono&ts=1426438675&use_mirror=cznic" -O /tmp/wine-mono-4.5.6.msi
WINEARCH=win32 WINEPREFIX=/home/tweetdeck/.winetweetdeck wine msiexec /i /tmp/wine-mono-4.5.6.msi > /dev/null 2>&1
WINEARCH=win32 WINEPREFIX=/home/tweetdeck/.winetweetdeck wine /tmp/lessmsi/lessmsi.exe x 'Z:\tmp\tweetdeck.msi' 'Z:\tmp\tweetdeck-extract\' > /dev/null 2>&1
cd /home/tweetdeck
mkdir -p .winetweetdeck/drive_c/Program\ Files/Twitter/TweetDeck/
cp -rv /tmp/tweetdeck-extract/SourceDir/* .winetweetdeck/drive_c/Program\ Files/Twitter/TweetDeck/ 2>&1
