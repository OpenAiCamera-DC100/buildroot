TOF_SENSOR_SITE = $(TOPDIR)/../external/tof_sensor
TOF_SENSOR_SITE_METHOD = local
TOF_SENSOR_INSTALL_STAGING = YES

$(eval $(cmake-package))
