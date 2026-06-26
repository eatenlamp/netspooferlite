# netspooferlite
Network Spoofer Lite v1.0
# Network Spoofer Lite

**Network Spoofer Lite** is a Magisk and KernelSU module that spoofs system properties to enhance anonymity and bypass regional restrictions.

## ✨ Features

- **Device model spoofing** — hides the real model by changing it to `Google Pixel 8 Pro`
- **Region (MCC/MNC) spoofing** — emulates a US location (`310260` — T-Mobile US)
- **VPN status masking** — hides VPN usage from apps
- **Minimal system impact** — doesn't interfere with DNS, leaving it up to you

## 📱 Compatibility

- **Magisk** (v27.0 and above)
- **KernelSU** (v1.0.0 and above)
- All Android devices (ARM/ARM64)

## 🔧 Installation

1. Download the latest release from [Releases](https://github.com/eatenlamp/netspooferlite/releases)
2. Install via Magisk Manager or KernelSU Manager (or via Orange Fox Recovery)
3. Reboot your device

## 🛠️ Verification

After installation, open a terminal and run:

getprop ro.product.model
getprop ro.product.manufacturer
getprop gsm.operator.numeric
