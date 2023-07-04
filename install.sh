#!/usr/bin/env bash


# Install PDK
wget "https://pm.puppet.com/cgi-bin/pdk_download.cgi?dist=ubuntu&rel=22.04&arch=amd64&ver=latest" -O pdk-latest.deb
sudo dpkg -i pdk-latest.deb

# Install Golang
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install -y golang-1.18

# Install Podman as alternative to Docker
sudo apt-get -y install podman
echo "alias docker='podman'" >> ~/.bashrc
mkdir ~/.config/containers
echo "[engine]" >> ~/.config/containers/containers.conf
echo "cgroup_manager = 'cgroupfs'" >> ~/.config/containers/containers.conf 
echo "events_logger = 'file'" >> ~/.config/containers/containers.conf

# Reload
bash

