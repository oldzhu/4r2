################################################################################
#
## radare2 
#
#################################################################################

RADARE2_VERSION = origin/master
RADARE2_SITE = git://github.com/radareorg/radare2.git
RADARE2_INSTALL_TARGET = YES

define RADARE2_CONFIGURE_CMDS
	$(RADARE2_PKGDIR)/config_r2.sh $(BUILD_DIR) $(HOST_DIR) $(BR2_PACKAGE_RADARE2_TARGET_ARCH) $(@D) $(STAGING_DIR) $(RADARE2_PKGDIR) $(TARGET_DIR)
endef

define RADARE2_BUILD_CMDS
	$(RADARE2_PKGDIR)/build_r2.sh $(BUILD_DIR) $(HOST_DIR) $(BR2_PACKAGE_RADARE2_TARGET_ARCH) $(@D) $(STAGING_DIR) $(RADARE2_PKGDIR) $(TARGET_DIR)
endef

define RADARE2_INSTALL_TARGET_CMDS
	$(RADARE2_PKGDIR)/install_r2.sh $(BUILD_DIR) $(HOST_DIR) $(BR2_PACKAGE_RADARE2_TARGET_ARCH) $(@D) $(STAGING_DIR) $(RADARE2_PKGDIR) $(TARGET_DIR)
endef

$(eval $(generic-package))
