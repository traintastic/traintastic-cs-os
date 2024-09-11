################################################################################
#
# traintastic-client
#
################################################################################

TRAINTASTIC_CLIENT_VERSION = $(TRAINTASTIC_VERSION)
TRAINTASTIC_CLIENT_SITE = $(TRAINTASTIC_SITE)
TRAINTASTIC_CLIENT_SITE_METHOD = $(TRAINTASTIC_SITE_METHOD)
TRAINTASTIC_CLIENT_GIT_SUBMODULES = YES
TRAINTASTIC_CLIENT_CONF_OPTS = -DTRAINTASTIC_CS=ON
TRAINTASTIC_CLIENT_SUBDIR = client
TRAINTASTIC_CLIENT_INSTALL_STAGING = NO
TRAINTASTIC_CLIENT_INSTALL_TARGET = YES

define TRAINTASTIC_CLIENT_USERS
	traintastic-client -1 traintastic -1 * - - - Traintastic-client user
endef

$(eval $(cmake-package))
