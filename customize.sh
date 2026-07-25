#!/system/bin/sh

# SPDX-FileCopyrightText: 2026 eatenlamp eatenlamp@proton.me
#
# SPDX-License-Identifier: AGPL-3.0-or-later

ui_print "*******************************"
ui_print "  Network Spoofer Lite v2.0"
ui_print "  by eatenlamp"
ui_print "*******************************"

ORIGINAL_MODEL=$(getprop ro.product.model)
ORIGINAL_MANUFACTURER=$(getprop ro.product.manufacturer)

echo "model=$ORIGINAL_MODEL" > /data/adb/modules/netspooferlite/original_config.conf
echo "manufacturer=$ORIGINAL_MANUFACTURER" >> /data/adb/modules/netspooferlite/original_config.conf

ui_print "  Installation complete!"
