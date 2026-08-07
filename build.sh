#!/bin/bash
set -e


apt update
apt install -y live-build debootstrap systemd curl

chmod +x auto/*

echo "Configuring the build"
lb config

echo "Building the image"
lb build

echo "Build complete"
