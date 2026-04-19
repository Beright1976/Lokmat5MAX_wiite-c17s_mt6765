# TWRP 11.0 for LOKMAT APPLLP 5 MAX (c17s)

![TWRP Logo](https://twrp.me/assets/img/twrp_logo.png)

## Technical Specifications
- **Device:** LOKMAT APPLLP 5 MAX (also known as c17s / wiite)
- **SoC:** MediaTek MT6762V/WB (running on mt6765 platform)
- **Architecture:** arm64-v8a
- **Kernel:** 4.19.127 (Forensic Verified)
- **Display Resolution:** 480x640 (Portrait)
- **Build Version:** 11.0 (Alpha)
- **Maintainer:** beright1976

## ⚠️ DISCLAIMER
**FLASH AT YOUR OWN RISK.**
I am not responsible for bricked devices, dead SD cards, thermonuclear war, or you getting fired because the alarm app failed. Please do some research if you have any concerns about features included in this recovery before flashing it! YOU are choosing to make these modifications.

## Features (testing)
- Fully working Touchscreen. (Verified)
- ADB/MTP support.
- Decryption support for FBE (File-Based Encryption).
- Fastbootd support.
- Forensic-level partition mapping verified against a custom device database.(verified)

## Flashing Instructions

### Prerequisites
- Bootloader must be UNLOCKED.
- `adb` and `fastboot` tools installed on your PC.

### Windows (Method 1: Fastboot)
1. Power off the device.
2. Enter Fastboot mode (usually Power + Volume Down).
3. Connect to PC via USB.
4. Open a command prompt and run:
   ```cmd
   fastboot flash recovery prebuilt_images/recovery.img
   fastboot reboot recovery
   ```

### Linux (Method 2: Fastboot)
1. Open terminal and run:
   ```bash
   sudo fastboot flash recovery prebuilt_images/recovery.img
   sudo fastboot reboot recovery
   ```

### MTK Client (Recommended for MTK Devices)
If you have `mtkclient` installed:
```bash
python3 mtk r recovery prebuilt_images/recovery.img
```
YOU WILL NEED TO FLASH A MODIFIED PARA.BIN TO GET IT TO REBOOT DIRECTLY TO TWRP
AND THEN REFLASH YOUR STOCK PARA TO RETURN STOCK BEHAVIOR AND ENTER RECOVERY FROM SYSTEM .
IF YOU DO NOT REBOOT TO RECOVERY FIRST BOOT RECOVERY MAY NOT STICK


## Forensic Database
This repository includes a `database/` folder containing a massive, home-built forensic reverse-engineering database for this specific device. This is one of the most comprehensive datasets available for the LOKMAT 5 MAX, covering offsets, partition sizes, and hardware IDs. it s not completed yet theres some slop stilll ill be making changes and additions and refinements.as a prelude to asop gsi for the device..

## Source Code
The root of this repository contains the TWRP device tree for `device/wiite/c17s`. You can include this in your TWRP 11.0 manifest to build from source.

## Credits
- TeamWin for TWRP.
- beright1976 for the device tree and forensic database.
- The Android development community.
