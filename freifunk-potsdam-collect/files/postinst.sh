#!/bin/sh
#
# As part of the install, we don't want to smash an already set up config
# but at the same time update it if necessary.

. /lib/functions.sh

touch /etc/config/ffp

if [ "`uci -q get ffp.status`" = "" ]; then
    uci set ffp.status=config
fi
if [ "`uci -q get ffp.status.enable`" = "" ]; then
    uci set ffp.status.enable='1'
fi
if [ "`uci -q get ffp.status.host`" ]; then
    uci set ffp.status.host='monitor.freifunk-potsdam.de'
fi
if [ "`uci -q get ffp.status.path`" ]; then
    uci set ffp.status.path='/fff'
fi
if [ "`uci -q get ffp.status.upgradeurl`" ]; then
    uci set ffp.status.upgradeurl='http://monitor.freifunk-potsdam.de/ffp-collect'
fi
if [ "`uci -q get  ffp.status.autoupgrade`" ]; then
    uci set ffp.status.autoupgrade='0'
fi
if [ "`uci -q get ffp.status.sendcontact`" ]; then
    uci set ffp.status.sendcontact='0'
fi

/etc/init.d/ffp-collect stop
uci commit
reload_config
/etc/init.d/ffp-collect start
