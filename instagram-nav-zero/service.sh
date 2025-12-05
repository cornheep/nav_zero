#!/system/bin/sh
# KernelSU service script: copy overlay and enable
MODDIR=${0%/*}

# Ensure overlay directory exists
mkdir -p $MODDIR/system/product/overlay

# Copy APK into place if not already there
cp -fp $MODDIR/InstagramNavFixOverlay.apk $MODDIR/system/product/overlay/

# Give system a moment to boot
sleep 5

# Enable overlay
cmd overlay enable com.instagram.android.InstagramNavFixOverlay 2>/dev/null
