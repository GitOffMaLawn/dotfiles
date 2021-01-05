#!/bin/bash

NFTXT=~/scripts/nf.txt
NFTXT_EPOCH=$(stat -c %Y "$NFTXT")
EPOCH_MIN_23H=$(date -d '-23 hour' '+%s') 
#CURRENT_EPOCH=$(date +%s)


if [ "$EPOCH_MIN_23H" -gt "$NFTXT_EPOCH" ]; then
	neofetch > "$NFTXT" && cat "$NFTXT"
	else
	cat "$NFTXT"
fi

