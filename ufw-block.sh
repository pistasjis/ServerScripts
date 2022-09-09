#!/bin/bash
# Made (copy and pasted) by Odyssey346
# Licensed with The Unlicense
if [ -z $1 ]
then
          echo "Give me an ip... for example: ufw-block 9.9.9.9 (dont run this obviously)"
          exit
fi
if ! command -v ufw &> /dev/null
then
        echo "In order to use ufw-block, you need to have ufw installed."
        exit
fi
if [ "$EUID" -ne 0 ]
  then echo "ufw has to be run with root priviledges, and so does the script."
  exit
fi
ufw deny from $1 to any
