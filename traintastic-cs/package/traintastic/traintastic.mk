################################################################################
#
# traintastic
#
################################################################################

TRAINTASTIC_VERSION = origin/159-traintastic-cs-support
TRAINTASTIC_SITE = https://github.com/traintastic/traintastic.git
TRAINTASTIC_SITE_METHOD = git

include $(sort $(wildcard $(BR2_EXTERNAL_TRAINTASTIC_CS_PATH)/package/traintastic/*/*.mk))
