#!/system/bin/sh

# Inspect location MCC/MNC USA
resetprop gsm.operator.numeric 310260
resetprop gsm.sim.operator.numeric 310260
resetprop ro.csc.country_code US

# Hide VPN (Disable the flag)
resetprop net.vpn.status 0

# Inspect the phone model
resetprop ro.product.model "Pixel 8 Pro"
resetprop ro.product.manufacturer "Google"
