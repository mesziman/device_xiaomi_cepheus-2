#!/bin/bash

set -e
source build/envsetup.sh

changes=(
257168 # Allow setting the recovery density separately from the aapt config
257175 # releasetools: Add script to sign zips
260346 # build: Remove su inclusion
)
repopick -g https://review.lineageos.org -P build/make ${changes[@]}&
exit
# build/soong
changes=(
256886 # soong: Add function to return camera parameters library name
259286 # Add android_app_import.
259287 # uncompressedDex option for android_app_import.
259288 # Implement DPI variants in android_app_import.
259289 # androidmk conversion logic for android_app_import
259290 # Improve android_app_import.dpi_variants handling.
259291 # Add filename property to android_app_import
259292 # Add arch variant support to android_app_import.
259293 # Add default_dev_cert to android_app_import
259511 # New AndroidMk authoring system based on entry map.
259512 # Add data property to sh_test.
259513 # Add sh_test_host.
259514 # Add overrides property to prebuilt_apex
259515 # AndroidMkEntries minor refactoring.
259516 # Comment out broken android_app_imports tests
261076 # soong: Give priority to modules in exported namespaces for bootjars
)
repopick -g https://review.lineageos.org -P build/soong ${changes[@]}&

# external/mksh
changes=(
259638 # mksh: Mark mkshrc as recovery_available
)
repopick -g https://review.lineageos.org -P external/mksh ${changes[@]}&

# external/tinycompress
changes=(
256308 # tinycompress: Enable extended compress format
)
repopick -g https://review.lineageos.org -P external/tinycompress ${changes[@]}&

# frameworks/av
changes=(
256899 # camera: Allow devices to load custom CameraParameter code
#258812 # CameraService: Support hooks for motorized camera
)
repopick -g https://review.lineageos.org -P frameworks/av ${changes[@]}&

# frameworks/base
changes=(
#258530 # Use UnlockMethodCache#canSkipBouncer in user switcher
258159 # frameworks: base: Port password retention feature
258180 # Fix Build Credentials refactored to use byte[]
256192 # [DNM] IS_DEBUGGABLE -> IS_ENG
)
repopick -g https://review.lineageos.org -P ${changes[@]}&

# frameworks/native

# hardware/interfaces
changes=(
258181 # keymasterV4_0: Tags support for FBE wrapped key.
)
repopick -g https://review.lineageos.org -P hardware/interfaces ${changes[@]}&

# hardware/lineage/interfaces
changes=(
258215 # Initial dummy cryptfshw implementation
260411 # cryptfshw: Introduce qti backend implementation
260069 # wifi: Disable softAP MAC randomization by default
)
repopick -g https://review.lineageos.org -P vendor/interfaces ${changes[@]}&

# hardware/qcom/data/ipacfg-mgr

# hardware/qcom/keymaster
changes=(
260415 # keymaster: Reverse wait for qsee flag
)
repopick -g https://review.lineageos.org -P hardware/qcom/keymaster ${changes[@]}&


# system/core
changes=(
258166 # Add wrapped key support
256219 # utils: Threads: Handle empty thread names
261945 # fs_mgr: Fix EnsurePathMounted with a given mount_point.
259414 # reboot: mark as recovery_available
260334 # fs_mgr: mount: don't set the block device as ro for recovery
261075 # Revert "Format formattable partitions if mount fails"
259650 # Make adb use a custom prop for adb root
)
repopick -g https://review.lineageos.org -P system/core ${changes[@]}&

# system/netd
changes=(
256959 # netd: Allow devices to force-add directly-connected routes
260003 # system/netd: Squash of app fw restriction commits
)
repopick -g https://review.lineageos.org -P system/netd ${changes[@]}&


# system/vold
changes=(
258131 # vold: Add Hardware FDE feature
258132 # system: vold: Remove crypto block device creation
258133 # vold: Wrapped key support for FBE
258134 # vold: Use separate flag for wrappedkey
258135 # Remove no longer relevant header file
258136 # vold: add support for clear key
258137 # Fix for CTS test CtsAppSecurityHostTestCases
258138 # vold: fix build error
258139 # vold: change to upgrade key if export fails
258141 # system: vold: fix block disk encryption to work with metadata encryption
258145 # Updates for migrated code upstream
258147 # system: vold: Close crypto block device if it was created
258148 # system: vold: pass proper extra params to load crypto device
258140 # system: vold: Use wrapped key for metadata encryption
258149 # [automerger] vold: resolve crypto device creation failure with dm-crypt skipped: 4b5c1b2db2
258150 # system: vold: Use ICE for UFS card
258151 # vold: Move QCOM HW FDE inclusion under Lineage namespace
258169 # vold: add support for more filesystems for public storage
258170 # vold: Fix fsck on public volumes
258171 # vold: Support internal storage partitions
258172 # vold: Honor mount options for ext4/f2fs partitions
258173 # vold: Mount ext4/f2fs portable storage with sdcard_posix
258174 # vold ext4/f2fs: do not use dirsync if we're mounting adopted storage
258175 # Fix the group permissions of the sdcard root.
258176 # vold: skip first disk change when converting MBR to GPT
258177 # vold: Allow reset after shutdown
258178 # vold: Accept Linux GPT partitions on external SD cards
258179 # Add "changepw" command to vdc.
)
repopick -g https://review.lineageos.org -P system/vold ${changes[@]}&


wait

# build/make
repopick -g https://review.lineageos.org -P build/make -f 259858 # Sorry bro: 6 -> 3
