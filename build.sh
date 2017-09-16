#!/bin/bash
CURRENT_DIR=$PWD
export ARCH=arm64
export SUBARCH=arm
export CROSS_COMPILE=/home/sandstranger/Android/utility/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
make clean
make mrproper
make h560_defconfig
make xconfig
make -j7 &> results.txt
#abootimg --create boot.img -f bootimg.cfg -k $IMAGEGZ_DTB -r initrd.img
