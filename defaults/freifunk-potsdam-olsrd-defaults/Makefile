include $(TOPDIR)/rules.mk

PKG_NAME:=freifunk-potsdam-olsrd-defaults

include ../../freifunk-potsdam-generic.mk

define Package/freifunk-potsdam-olsrd-defaults
  SECTION:=freifunk-potsdam
  CATEGORY:=freifunk-potsdam
  TITLE:=Freifunk Potsdam olsrd default configuration
  URL:=http://github.com/freifunk-potsdam/firmware-packages
  DEPENDS+= +olsrd +freifunk-berlin-lib-guard
  PKGARCH:=all
endef

define Package/freifunk-potsdam-olsrd-defaults/description
  Freifunk Potsdam configuration files for olsrd and olsrd6
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/freifunk-potsdam-olsrd-defaults/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(CP) ./uci-defaults/* $(1)/etc/uci-defaults
endef

$(eval $(call BuildPackage,freifunk-potsdam-olsrd-defaults))
