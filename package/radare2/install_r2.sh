#!/bin/bash
# p1 BUILD_DIR
# p2 HOST_DIR
# p3 BR2_PACKAGE_{PKGNAME}_TARGET_ARCH
# p4 @D
# p5 STAGING_DIR
# p6 [PKGNAME}_PKGDIR
# p7 TARGET_DIR

if [ $3 == "ARM64" ]; then
	cd $4
	make DESTDIR=$7 install
else
	cd $4
	make DESTDIR=$7 install
fi
