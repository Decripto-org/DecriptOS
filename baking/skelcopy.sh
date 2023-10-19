#!/bin/bash

sudo cp -r -p /home/decripto/.local /home/decripto/distro/chroot/etc/skel/
#sudo cp -r -p /home/decripto/.dmrc /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.mozilla /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/Tools /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/Documents /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/Downloads /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/Pictures /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.Xauthority /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.bashrc /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.gnome /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.profile /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.config /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/Desktop /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.dmrc /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.icons /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.themes /home/decripto/distro/chroot/etc/skel/
#sudo cp -r -p /home/decripto/.gtkrc-2.0 /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.Xauthority /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /opt/* /home/decripto/distro/chroot/opt/
sudo cp -r -p /home/decripto/BurpSuiteCommunity /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.cinnamon /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /home/decripto/.java /home/decripto/distro/chroot/etc/skel/
sudo cp -r -p /usr/share/backgrounds/ /home/decripto/distro/chroot/usr/share/
sudo cp -r -p /usr/share/plymouth/themes/homeworld/* /home/decripto/distro/chroot/usr/share/plymouth/themes/homeworld/
sudo cp -r -p /usr/share/icons/custom /home/decripto/distro/chroot/usr/share/icons/
sudo cp -r -p /etc/lightdm/lightdm-gtk-greeter.conf /home/decripto/distro/chroot//etc/lightdm/lightdm-gtk-greeter.conf
sudo cp -r -p /etc/lightdm/lightdm.conf /home/decripto/distro/chroot//etc/lightdm/lightdm.conf

echo "all done"
