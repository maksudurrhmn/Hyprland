#!/bin/bash

GPU_USAGE=$(cat /sys/class/drm/card1/device/gpu_busy_percent)
GPU_TEMP=$(($(cat /sys/class/hwmon/hwmon1/temp1_input) / 1000))
GPU_FAN=$(sensors | awk '/amdgpu-pci-0100/{found=1} found && /fan1:/{print $2; exit}')
GPU_POWER=$(sensors | awk '/amdgpu-pci-0100/{found=1} found && /PPT:/{print $2 " " $3; exit}')

echo "{\"text\":\"󰢮 ${GPU_USAGE}%   ${GPU_TEMP}°C\", \"tooltip\":\"RX 570\\nUsage: ${GPU_USAGE}%\\nTemperature: ${GPU_TEMP}°C\\nFan: ${GPU_FAN}\\nPower: ${GPU_POWER}\"}"