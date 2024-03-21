#
#  Test mk file for dc100 test
#

USB_SERIAL_VERSION = 1.0
USB_SERIAL_SITE = $(TOPDIR)/../app/usb_serial
USB_SERIAL_SITE_METHOD = local
USB_SERIAL_INSTALL_STAGING = YES

define USB_SERIAL_INSTALL_STAGING_CMDS
	mkdir -p $(TARGET_DIR)/lib/modules/
	$(INSTALL) -D -m 0644 $(TOPDIR)/../kernel/drivers/usb/serial/usbserial.ko $(TARGET_DIR)/lib/modules/usbserial.ko
	$(INSTALL) -D -m 0755 $(TOPDIR)/../app/usb_serial/S99_load_usbserial_modules $(TARGET_DIR)/etc/init.d/S99_load_usbserial_modules
        $(INSTALL) -D -m 0755 $(TOPDIR)/../app/dc100_test/S99_start_netserver $(TARGET_DIR)/etc/init.d/S99_start_netserver
endef

$(eval $(generic-package))
