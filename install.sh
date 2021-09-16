#!/bin/sh

ESC="\033["
BLACK="${ESC}30m"
RED="${ESC}31m"
GREEN="${ESC}32m"
YELLOW="${ESC}33m"
BLUE="${ESC}34m"
MAGENTA="${ESC}35m"
CYAN="${ESC}36m"
WHITE="${ESC}97m"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
target_folder="/usr/local/bin"

source $SCRIPTPATH/sourceable

pushd "$SCRIPTPATH" >/dev/null 2>&1

for file in $(ls ./scripts); do
    echo "- installing [${GREEN}$file${WHITE}]"
    chmod +x ./scripts/$file
    ln -sf $SCRIPTPATH/scripts/$file $target_folder/$file
done

echo "- sourcing [${GREEN}sourceable${WHITE}]"
if [[ "" = $(cat ~/.zshrc | grep "source $SCRIPATH") ]]; then
    echo "source $SCRIPTPATH/sourceable" >> ~/.zshrc
fi

echo "Done."
echo "\nPlease source ${GREEN}.zshrc${WHITE} again."
popd >/dev/null 2>&1