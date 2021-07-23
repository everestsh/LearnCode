#!/bin/bash   

lsusb | grep -i "fffe"  | awk '{print $1, $2, $4}' > find_usb_dev.txt
sed -i "s/://g" find_usb_dev.txt
sed -i "s/\ /\//g" find_usb_dev.txt
sed -i "s/Bus/\/dev\/bus\/usb/g" find_usb_dev.txt
ls -al  `cat find_usb_dev.txt`
