#
# Copyright (C) 2019 Freifunk Potsdam
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# this is mainly a fork of the freifunk-berlin-bbbdigger plugin with some config changes

include $(TOPDIR)/rules.mk

PKG_NAME:=freifunk-potsdam-pdmdigger
PKG_VERSION:=0.0.1
PKG_RELEASE:=0

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/freifunk-potsdam-pdmdigger/default
  SECTION:=freifunk-potsdam
  CATEGORY:=freifunk-potsdam
  URL:=http://github.com/freifunk-potsdam/packages_potsdam
  PKGARCH:=all
endef

define Package/freifunk-potsdam-pdmdigger
  $(call Package/freifunk-potsdam-pdmdigger/default)
  TITLE:=A Tunneldigger (l2tp) based VPN connection to mesh with the Potsdam Backbone
  EXTRA_DEPENDS:=falter-berlin-tunneldigger, olsrd
endef

define Package/freifunk-potsdam-pdmdigger/description
  Freifunk Potsdam configuration of tunneldigger to connect to and mesh with the Potsdam Backbone
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/freifunk-potsdam-pdmdigger/install
	$(INSTALL_DIR) $(1)/tmp
	$(INSTALL_BIN) ./files/postinst.sh $(1)/tmp/freifunk-potsdam-pdmdigger_postinst.sh
endef

define Package/freifunk-potsdam-pdmdigger/postinst
#!/bin/sh
$${IPKG_INSTROOT}/tmp/freifunk-potsdam-pdmdigger_postinst.sh
endef

$(eval $(call BuildPackage,freifunk-potsdam-pdmdigger))
