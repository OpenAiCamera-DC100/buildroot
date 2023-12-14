#
#  Test mk file for dc100 test
#

DC100_TEST_VERSION = 1.0
DC100_TEST_SITE = $(TOPDIR)/../app/dc100_test
DC100_TEST_SITE_METHOD = local
DC100_TEST_INSTALL_STAGING = YES
DC100_TEST_INSTALL_TARGET = YES

DC100_TEST_DEPENDENCIES += dcmedia opencv3 libcurl
DC100_TEST_DEPENDENCIES += camera_engine_dcaiq
DC100_TEST_DEPENDENCIES += libdrm
DC100_TEST_DEPENDENCIES += linux-rga
DC100_TEST_DEPENDENCIES += mpp
DC100_TEST_DEPENDENCIES += libv4l
DC100_TEST_DEPENDENCIES += thermal_camera tof_sensor
DC100_TEST_DEPENDENCIES += json-c

$(eval $(cmake-package))