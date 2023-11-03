#!/bin/bash

if [ $# -ne 1 ]; then
  echo "usage: burn <device>"
else
  card=$(echo $1 | sed 's/\/dev\///')
  dev=$(ls /dev)

  if echo $dev | grep -q $card; then
    lst=$(lsblk -l | grep ^$device | cut -f 1 -d " ")
	
    for i in $lst
      do
        if [ "$device" != "$i" ]; then
          sudo umount /dev/$i 2>/dev/null
        fi
      done

      sudo bmaptool copy poky/build_pocketBeagle/tmp/deploy/images/pocketbeagle/core-image-minimal-pocketbeagle.wic.xz /dev/$1
      echo "SD Card $card Done"
   else
     echo "$1 not found";
   fi
fi

