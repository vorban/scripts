#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
target_folder="/usr/local/bin"

pushd "$SCRIPTPATH" >/dev/null 2>&1

for file in $(ls ./scripts); do
    echo "- installing [$file]"
    chmod +x ./scripts/$file
    ln -sf $SCRIPTPATH/scripts/$file $target_folder/$file
done
echo "Done."
popd >/dev/null 2>&1