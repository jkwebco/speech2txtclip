#!/bin/bash

#
# SVOX Pico TTS - Read text from file
#
# EXECUTE COMMAND
# ./picoTTSFromFile.sh text_en.txt
# ./picoTTSFromFile.sh de-DE text_de.txt
#


##### Constants
language="en-GB"
tmpFile="/tmp/picoTmpAudio.wav"
text=""

##### Main

if [ $# == 1 ]; then
	 text="${1}"
else
   language="${1}"
   text="${2}"   
fi

pico2wave -l=${language} -w=${tmpFile} "`cat ${text}`" treble 24 gain -l 6

aplay ${tmpFile}
rm ${tmpFile}
