################################################################################
#
# traintastic-server
#
################################################################################

TRAINTASTIC_SERVER_VERSION = $(TRAINTASTIC_VERSION)
TRAINTASTIC_SERVER_SITE = $(TRAINTASTIC_SITE)
TRAINTASTIC_SERVER_SITE_METHOD = $(TRAINTASTIC_SITE_METHOD)
TRAINTASTIC_SERVER_GIT_SUBMODULES = YES
TRAINTASTIC_SERVER_CONF_OPTS = -DTRAINTASTIC_CS=ON
TRAINTASTIC_SERVER_SUBDIR = server
TRAINTASTIC_SERVER_INSTALL_STAGING = NO
TRAINTASTIC_SERVER_INSTALL_TARGET = YES

define TRAINTASTIC_SERVER_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_TRAINTASTIC_CS_PATH)/package/traintastic/traintastic-server/S90traintastic-server $(TARGET_DIR)/etc/init.d/S90traintastic-server
endef

define TRAINTASTIC_SERVER_USERS
	traintastic-server -1 traintastic -1 * - - - Traintastic-server daemon
endef

define TRAINTASTIC_SERVER_PERMISSIONS
	/var/opt/traintastic d 0755 traintastic-server traintastic - - - - -
endef

$(eval $(cmake-package))
