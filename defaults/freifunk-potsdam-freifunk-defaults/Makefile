include $(TOPDIR)/rules.mk

PKG_NAME:=freifunk-potsdam-freifunk-defaults
PKG_SOURCE_DATE:=2019-05-25
PKG_VERSION:=1

include $(INCLUDE_DIR)/package.mk

define Package/freifunk-potsdam-freifunk-defaults
  SECTION:=freifunk-potsdam
  CATEGORY:=freifunk-potsdam
  TITLE:=Freifunk Potsdam freifunk default configuration
  URL:=http://github.com/freifunk-potsdam/firmware-packages
  PKGARCH:=all
endef

define Package/freifunk-potsdam-freifunk-defaults/description
  Freifunk Potsdam configuration files for freifunk
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/freifunk-potsdam-freifunk-defaults/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./uci-defaults/* $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,freifunk-potsdam-freifunk-defaults))
