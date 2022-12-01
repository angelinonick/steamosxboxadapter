#!/usr/bin/env bash

#Script to install xone controller code, dependancies, disable read-only filesystem and update pacman keyring. This needs to be run every time a system update occurs because any changes will be reverted in the system directories. In future need to revisit this to operate in usersapce. Currently limitations prevent this solution.


############################################
#Requires root, sudo, or sudoer permissions#
############################################
if [ "$(id -u)" -ne 0 ]; then
    echo 'This script must be run as root or sudo!' >&2
    exit 1
fi
#Disable steamos-readonly mode
#Initialize and populate pacman-keyring
#Install packages/dependancies
steamos-readonly disable && pacman-key --init && pacman-key --populate archlinux && pacman --noconfirm --verbose -Syu curl wget git base-devel gcc cabextract linux-neptune-headers


#Install cabextract for unarchiving
pacman --noconfirm --verbose -Syu cabextract

#More simple approach to clone and running install.sh and then to get firmware from microsoft for xbox remote run xone-get-firmware.sh
git clone https://github.com/medusalix/xone && cd xone && ./install.sh && echo "\r" | /usr/local/bin/xone-get-firmware.sh

