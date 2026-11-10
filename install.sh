#!/bin/bash
set -e

echo "=============================="
echo " MIRAJ VPN INSTALLER"
echo "=============================="

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

. /etc/os-release

echo "OS: $PRETTY_NAME"

if [ "$ID" != "ubuntu" ] || [ "$VERSION_ID" != "24.04" ]; then
    echo "Ubuntu 24.04 required"
    exit 1
fi

apt-get update
apt-get install -y curl wget git ca-certificates

echo "System preparation completed!"
