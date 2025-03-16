#!/bin/bash

sudo systemctl enable --now sddm.service
sudo systemctl enable --now pulseaudio.service
sudo systemctl enable --now chrome-remote-desktop@$USER

sudo chmod +x /home/$USER/.xsession
