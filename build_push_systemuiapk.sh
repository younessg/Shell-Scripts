#!/bin/bash

echo ""
echo "Building and/or pushing SystemUI.apk"
echo "------------------------------------"
echo ""

echo -n "What is your device name? "
read device
echo ""

echo -n "Build SystemUI.apk, y/n? "
read answer1
echo ""

echo -n "Reboot device after pushing the apk, y/n? "
read answer2
echo ""

# Build SystemUI apk based on the user's answer
if [ "$answer1" == "y" ]
then
    echo "Building SystemUI now!"
    echo ""
    make -j8 SystemUI
    echo ""
    echo "Finished building SystemUI"
fi
    
# Rooting and remounting the device
echo ""
echo "Rooting & remounting the device"
echo ""
date1=$(date +"%s")
adb root && adb remount
while [ $? -ne 0 ]
do
    date2=$(date +"%s")
    diff=$(($date2-$date1))
    if [ $(($diff % 60)) -ge 10 ]
    then
         echo "Device is not found after $(($diff % 60)) seconds. Aborting adb root && adb remount!"
         break
    else
        adb root && adb remount
    fi
done

# Push SystemUI apk to the device
echo ""
echo "Pushing SystemUI.apk to system/priv-app/SystemUI for $device"
echo ""
adb push out/target/product/"$device"/system/priv-app/SystemUI/SystemUI.apk system/priv-app/SystemUI
echo ""

# Rebooting the device based on the user's answer
if [ "$answer2" == "y" ]
then
    echo "Rebooting the device now"
    adb reboot
else
    echo "Not rebooting the device"
fi

# End
echo ""
echo "Finished building and/or pushing SystemUI.apk for $device!"
echo ""

