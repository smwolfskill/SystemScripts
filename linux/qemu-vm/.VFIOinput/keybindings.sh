#!/usr/bin/env bash
##formerly !/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

xbindkeys -f "$SCRIPT_DIR"/.xbindkeysrc
echo "As of 2/24/25, keybindings are Alt+1 to attach to VM and Alt+2 to de-attach."

# attempted to edit /etc/gdm3/PreSession/Default to launch this script on startup
