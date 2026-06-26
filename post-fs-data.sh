#!/system/bin/sh
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
