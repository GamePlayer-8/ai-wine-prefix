#!/usr/bin/env bash

SCRIPT_PATH=$(dirname $(realpath $0))

if [ $# -ne 0 ];then
    echo "I have no parameters just run the script without arguments"
    exit 1
fi

notify-send "Illustrator CC" "Illustrator CC launched." -i $SCRIPT_PATH"/AiIcon.png"

SCR_PATH=$SCRIPT_PATH"/.."
CACHE_PATH="~/.cache/illustratorCC17"

WINE_PREFIX="$SCR_PATH/prefix"

export WINEPREFIX="$WINE_PREFIX"

wine64 "$SCR_PATH/IllustratorCC17/IllustratorCC64.exe"


