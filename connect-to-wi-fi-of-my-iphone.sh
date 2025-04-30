#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect to Wi-Fi of my iPhone
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🛜

# Documentation:
# @raycast.author biafrajr
# @raycast.authorURL https://raycast.com/biafrajr

CONFIG_FILE="./wifi_config.env"
if [ ! -f "$CONFIG_FILE" ]; then
  echo "設定ファイル (wifi_config.env) が見つかりません: $CONFIG_FILE"
  exit 1
fi

source "$CONFIG_FILE"

DEVICE="en0"

networksetup -setairportpower "$DEVICE" on

networksetup -setairportnetwork "$DEVICE" "$SSID" "$PASSWORD"
