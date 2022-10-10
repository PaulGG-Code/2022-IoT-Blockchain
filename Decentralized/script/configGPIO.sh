#!/bin/bash

sudo echo 14 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio14/direction

sudo echo 18 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio18/direction

#chgrp -R $USER /sys/class/gpio
#chmod -R g+rw /sys/class/gpio