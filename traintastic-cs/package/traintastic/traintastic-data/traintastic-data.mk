################################################################################
#
# traintastic-data
#
################################################################################

TRAINTASTIC_DATA_VERSION = $(TRAINTASTIC_VERSION)
TRAINTASTIC_DATA_SITE = $(TRAINTASTIC_SITE)
TRAINTASTIC_DATA_SITE_METHOD = $(TRAINTASTIC_SITE_METHOD)
TRAINTASTIC_DATA_GIT_SUBMODULES = YES
TRAINTASTIC_DATA_CONF_OPTS = -DTRAINTASTIC_CS=ON
TRAINTASTIC_DATA_SUBDIR = shared
TRAINTASTIC_DATA_INSTALL_STAGING = NO
TRAINTASTIC_DATA_INSTALL_TARGET = YES

$(eval $(cmake-package))
