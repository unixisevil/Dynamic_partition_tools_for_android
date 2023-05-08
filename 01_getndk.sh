#!/bin/sh

NDK=android-ndk-r24-linux



if [ -d  android-ndk-r24 ];then
	exit 0
fi


if [ ! -e  "${NDK}.zip" ]; then
	wget  -c https://dl.google.com/android/repository/$NDK.zip
fi

unzip -o $NDK.zip
rm -rf $NDK.zip
