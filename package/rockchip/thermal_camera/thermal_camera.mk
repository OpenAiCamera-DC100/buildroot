THERMAL_CAMERA_SITE = $(TOPDIR)/../external/thermal_camera
THERMAL_CAMERA_SITE_METHOD = local
THERMAL_CAMERA_INSTALL_STAGING = YES

$(eval $(cmake-package))
