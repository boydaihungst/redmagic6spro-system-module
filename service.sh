#!/sbin/sh

# Module's own path (local path)
MODDIR=${0%/*}

deviceName=$(cat /sys/class/input/event9/device/name)
if [[ $deviceName == "nubia_sar0_channel0" ]]; then
  rm -rf /dev/input/event9
fi
