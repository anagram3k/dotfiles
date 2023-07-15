#!/bin/bash

if [ "$1" = "" ]; then
    echo "Parameter: <mount path> - the top directory"
    exit
fi

TRASH=$1/.Trash
UTRASH=$TRASH/$UID

echo Creating Trash Directory: $UTRASH
echo Ctrl-C to Cancel, Enter to Continue
echo You will need to enter your SUDO password for creating $TRASH
read VAR

sudo mkdir -v $TRASH
sudo chmod -v 1777 $TRASH
mkdir -v $UTRASH
chmod -v 700 $UTRASH
