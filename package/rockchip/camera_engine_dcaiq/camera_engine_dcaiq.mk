################################################################################
#
# cmosmediatech Camera Engine dcaiq For Linux
#
################################################################################
CAMERA_ENGINE_DCAIQ_VERSION = 1.0
CAMERA_ENGINE_DCAIQ_SITE = $(TOPDIR)/../external/camera_engine_dcaiq
CAMERA_ENGINE_DCAIQ_SITE_METHOD = local
CAMERA_ENGINE_DCAIQ_INSTALL_STAGING = YES

#CAMERA_ENGINE_DCAIQ_LICENSE = Apache V2.0
#CAMERA_ENGINE_DCAIQ_LICENSE_FILES = NOTICE
CAMERA_ENGINE_DCAIQ_DEPENDENCIES += linux-rga
CAMERA_ENGINE_DCAIQ_DEPENDENCIES += rk_oem
#CAMERA_ENGINE_DCAIQ_DEPENDENCIES += camera_engine_rkaiq

CAMERA_ENGINE_DCAIQ_TARGET_INSTALL_DIR = $(TARGET_DIR)

#CAMERA_ENGINE_DCAIQ_CONF_OPTS = -DBUILDROOT_BUILD_PROJECT=TRUE -DARCH=$(BR2_ARCH)
#CAMERA_ENGINE_DCAIQ_INSTALL_TARGET_OPTS = DESTDIR=$(BR2_PACKAGE_RK_OEM_INSTALL_TARGET_DIR) install/fast

$(eval $(cmake-package))


