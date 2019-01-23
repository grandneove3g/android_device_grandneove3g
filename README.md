##Device configuration for Samsung Galaxy Grand Neo Plus GT-I9060I (grandneove3g)

=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1,2GHz Cortex-A7
CHIPSET | Spreadtrum SC7730S sc8830
GPU     | Mali-400MP2
Memory  | 1 GB
Shipped Android Version | Android 4.4.4 with TouchWiz Essence
Storage | 8 GB
MicroSD | Up to 64 GB
Battery | 2100 mAh Li-Ion (removable)
Dimensions | 77.1 x 143.7 x 9.5 mm
Display | 480 x 800 pixels, 5.01"
Rear Camera  | 5.0 MP, LED flash
Front Camera | 2.0 MP
Release Date | May 2015

##Building instructions

### What do you need?
* 50GB left of your hard disk space
* Basic skills / knowledge of Linux

### Building steps
* 1. Sync Android source
* 2. Copy this file ([grandneove3g.xml](https://github.com/koquantam/android_local_manifests/blob/cm-14.1-grandneove3g/grandneove3g.xml)) to `.repo/local_manifests` (if that folder doesn't exist then "mkdir" it)
* 3. `repo sync` again
* 4. After syncing source and device-specific repo (from step 2), from your source root folder (where you have synced) open Terminal, `cd` to device/samsung/scx30g-common, type `./patch.sh` (this is the quick patching script)
* 5. `cd` to your source root again, type `. build/envsetup.sh && brunch grandneove3g`
