include $(TOPDIR)/rules.mk

PKG_NAME:=freifunk-potsdam-system-defaults
PKG_SOURCE_DATE:=2020-03-01
PKG_VERSION:=1

include $(INCLUDE_DIR)/package.mk
 
define Package/freifunk-potsdam-system-defaults
  SECTION:=freifunk-potsdam
  CATEGORY:=freifunk-potsdam
  TITLE:=Freifunk Potsdam system default configuration
  URL:=http://github.com/freifunk-potsdam/firmware-packages
  EXTRA_DEPENDS:=falter-berlin-lib-guard
  PKGARCH:=all
endef

define Package/freifunk-potsdam-system-defaults/description
  Freifunk Potsdam configuration files for basic system-files
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/freifunk-potsdam-system-defaults/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./uci-defaults/* $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,freifunk-potsdam-system-defaults))
