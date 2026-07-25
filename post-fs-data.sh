#!/system/bin/sh

# SPDX-FileCopyrightText: 2026 eatenlamp eatenlamp@proton.me
#
# SPDX-License-Identifier: AGPL-3.0-or-later

sleep 10
CONFIG_FILE=/data/adb/modules/netspooferlite/config.conf
if [ -f "$CONFIG_FILE" ]; then
    MODEL=$(grep "^model=" "$CONFIG_FILE" | cut -d'=' -f2)
    MANUFACTURER=$(grep "^manufacturer=" "$CONFIG_FILE" | cut -d'=' -f2)
    if [ -n "$MODEL" ]; then
        resetprop ro.product.model "$MODEL"
        resetprop ro.product.manufacturer "$MANUFACTURER"
        echo "Applied: $MODEL ($MANUFACTURER)" > /data/adb/modules/netspooferlite/last_apply.log
    fi
fi
resetprop net.vpn.status 0
