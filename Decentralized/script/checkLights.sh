#!/bin/bash
# Replace the address below with the address of your SmartBulb
# contract address you got from IoTeX Studio IDE
CONTRACT_ADDRESS=<CONTRACT_ADDRESS_COMES_HERE>
while :
do
echo "Polling the contract..."
BlueSTATE=$(ioctl contract test function $CONTRACT_ADDRESS abi.json BlueLightState |tr -d ':'| awk '{print $2}')
echo "Contract Blue state = " $BlueSTATE
if [ "$BlueSTATE" = "true" ];
then
 # Turn on the Light
 echo 1 > /sys/class/gpio/gpio14/value
else
 # Turn off the Light
 echo 0 > /sys/class/gpio/gpio14/value
fi

GreenSTATE=$(ioctl contract test function $CONTRACT_ADDRESS abi.json GreenLightState |tr -d ':'| awk '{print $2}')
echo "Contract Green State = " $GreenSTATE
if [ "$GreenSTATE" = "true" ];
then
 # Turn on the Light
 echo 1 > /sys/class/gpio/gpio18/value
else
 # Turn off the Light
 echo 0 > /sys/class/gpio/gpio18/value
fi

# Cycle every 10 seconds
sleep 10
done