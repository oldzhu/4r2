#!/bin/bash
# p1 BUILD_DIR
# p2 HOST_DIR
# p3 BR2_PACKAGE_{PKGNAME}_TARGET_ARCH
# p4 @D
# p5 STAGING_DIR
# p6 [PKGNAME}_PKGDIR
# p7 TARGET_DIR


if [ $3 == "ARM64" ]; then
	buildarch=aarch64-buildroot-linux
else
	buildarch=arm-buildroot-linux
fi

cp -u -v $6/$buildarch.mk $4/mk
sed -i 's/WGET/MYWGET/g' $4/shlr/Makefile

cd $4
./configure --with-compiler=$buildarch --host==$buildarch
