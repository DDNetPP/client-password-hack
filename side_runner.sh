#!/bin/bash

if [ ! -f lib/lib.sh ]
then
        echo "Error: lib/lib.sh not found!"
        echo "make sure you are in the root of the server repo"
        exit 1
fi

source lib/lib.sh

log "[password-hack] started! sleeping 2 seconds ..."

sleep 2

log "[password-hack] reloading config to populate password"

./lib/fifo.sh exec autoexec.cfg

