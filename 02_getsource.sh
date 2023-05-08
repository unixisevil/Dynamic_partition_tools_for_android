#!/bin/sh

clone() {
  repo=$1
  git clone -b platform-tools-33.0.1 https://android.googlesource.com/platform/$repo src/$repo
}

mkdir -p src

mkdir -p src/system

if [ ! -d  src/system/core ];then
	clone system/core
fi 

if [ ! -d  src/system/vold ];then
	clone system/vold
fi

if [ ! -d  src/system/gsid  ];then
	clone system/gsid
fi

if [ ! -d  src/system/extras ]; then
	clone system/extras
fi

if [ ! -d  src/system/libbase ]; then
	clone system/libbase
fi

if [ ! -d  src/system/logging ]; then
	clone system/logging
fi

mkdir -p  src/external

if [ ! -d  src/external/avb ];then
	clone external/avb
fi

if [ ! -d  src/external/e2fsprogs ];then
	clone external/e2fsprogs
fi

if [ ! -d  src/external/fec ]; then
	clone external/fec
fi

if [ ! -d  src/external/fmtlib ];then
	clone external/fmtlib
fi

if [ ! -d  src/external/selinux ]; then
	clone external/selinux
fi

if [ ! -d  src/external/squashfs-tools ]; then
	clone external/squashfs-tools
fi

if [ ! -d  src/external/pcre ];then
	clone external/pcre
fi

if [ ! -d  src/external/protobuf ];then
	clone external/protobuf
fi

if [ ! -d  src/external/zlib ];then
	clone external/zlib
fi

if [ ! -d src/boringssl ];then
	git clone https://boringssl.googlesource.com/boringssl  src/boringssl
fi
