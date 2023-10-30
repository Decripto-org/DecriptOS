#!/bin/bash

sudo cp -r -p /home/decripto/.local /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.mozilla /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/Tools /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/Documents /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/Downloads /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/Pictures /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.bashrc /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.gnome /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.profile /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.config /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/Desktop /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.icons /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.themes /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /opt/* /home/decripto/distro2/chroot/opt/
sudo cp -r -p /home/decripto/BurpSuiteCommunity /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.cinnamon /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /home/decripto/.java /home/decripto/distro2/chroot/etc/skel/
sudo cp -r -p /usr/share/backgrounds/ /home/decripto/distro2/chroot/usr/share/
sudo cp -r -p /usr/share/plymouth/themes/homeworld/* /home/decripto/distro2/chroot/usr/share/plymouth/themes/homeworld/
sudo cp -r -p /usr/share/icons/custom /home/decripto/distro2/chroot/usr/share/icons/

echo "all done"
