#!/bin/sh
#
# XxXPachaXxX Systems - AKM
#
Pause()
{
OLDCONFIG=`stty -g`
stty -icanon -echo min 1 time 0
dd count=1 2>/dev/null
stty $OLDCONFIG
}

export PATH=$PATH:/home/xxxpachaxxx/android-toolchains/arm-eabi-4.4.3/bin
export CROSS_COMPILE=arm-eabi-
export ARCH=arm 
make -j5

echo "Hit a key to continue ..."
Pause

