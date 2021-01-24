#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:87a794ea3544f18684cad53701ad480d87218f4d; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:a9081ba1caa4d1d6c079d6f87cbe235e2e86609b \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:87a794ea3544f18684cad53701ad480d87218f4d && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
