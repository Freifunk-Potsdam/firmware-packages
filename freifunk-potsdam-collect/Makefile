
include $(TOPDIR)/rules.mk

PKG_NAME:=freifunk-potsdam-collect
PKG_VERSION:=19.3
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/freifunk-potsdam-collect
  SECTION:=freifunk-potsdam
  CATEGORY:=freifunk-potsdam
  TITLE:=Freifunk Potsdam Status collect script
  URL:=http://github.com/freifunk-potsdam/packages_potsdam
  PKGARCH:=all
endef

define Package/freifunk-potsdam-collect/description
  Freifunk Potsdam Status collect script
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/freifunk-potsdam-collect/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./init.d/ffp-collect $(1)/etc/init.d/ffp-collect
	$(INSTALL_DIR) $(1)/tmp
	$(INSTALL_BIN) ./files/postinst.sh $(1)/tmp/freifunk-potsdam-collect_postinst.sh
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./uci-defaults/* $(1)/etc/uci-defaults
endef

define Package/freifunk-potsdam-collect/postinst
#!/bin/sh
$${IPKG_INSTROOT}/tmp/freifunk-potsdam-collect_postinst.sh
endef

$(eval $(call BuildPackage,freifunk-potsdam-collect))
