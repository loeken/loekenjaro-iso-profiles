#!/bin/bash

if [ "$(whoami)" == "cryptopian" ]; then
  echo "do not run this as user cryptopian, create a new user, delete cryptopian"
  echo "then rerun this script again from the new users home directory"
  exit 0
fi
sudo pacman-mirrors --country United_Kingdom && sudo pacman -Syyu
yay -S slack-desktop google-chrome openvpn-update-systemd-resolved visual-studio-code-bin
sudo systemctl enable systemd-resolved.service
sudo systemctl start systemd-resolved.service
chsh -s /usr/bin/zsh
