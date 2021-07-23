#!/bin/sh

docker run -t -i --device=`cat find_usb_dev.txt`  openbts3.09_52:0201  /bin/bash
