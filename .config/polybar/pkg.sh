#!/bin/bash

pack=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pack + aur))
if [[ "$check" != "0" ]]; then
    echo "$pack %{F#5b5b5b}%{F-} $aur"
fi
