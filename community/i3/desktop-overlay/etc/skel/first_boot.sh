#!/bin/bash
sudo systemctl restart NetworkManager
sudo systemctl enable NetworkManager
sudo systemctl enable lightdm
sudo systemctl restart lightdm
