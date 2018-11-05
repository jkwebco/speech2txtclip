#!/bin/bash

#xsel | festival --tts --pipe
#xsel | ./talk.sh --pipe

#xsel | pico2wave -l=en-US -w=/tmp/test.wav "'$cat {talk.sh}'"
#aplay /tmp/test.wav
#rm /tmp/test.wav

#xclip -sel -c -o -t text/html > /home/userany/Desktop/test.txt
xsel > /home/userany/Desktop/test.txt

/home/userany/Desktop/picoTTSFromFile.sh /home/userany/Desktop/test.txt

