FROM debian

RUN apt-get update && \
      apt-get -y install sudo

RUN apt install cinnamon python3 python3-full python3-pip python3-virtualenv git firefox-esr qtqr kleopatra scdaemon keepassxc zulucrypt-gui printer-driver-all searchmonkey firmware-linux firmware-linux-nonfree firmware-misc-nonfree linux-image-amd64 linux-headers-amd64 firmware-iwlwifi squashfs-tools syslinux-common syslinux-utils xorriso isolinux wireshark gedit simplescreenrecorder kate libreoffice curl tor unzip macchanger iptables libportaudio2 flameshot gimp httrack mousepad httraqt stacer autopsy secure-delete ffmpeg vlc libsecp256k1-0 evince python3-tk hashcat libwxgtk3.0-gtk3-0v5 gir1.2-gtop-2.0 libc++1 shotwell libgconf-2-4 librsvg2-bin firmware-atheros firmware-realtek firmware-amd-graphics clementine audacity dragonplayer viewnior flowblade gufw zenity software-properties-common obs-studio synaptic gdebi firmware-b43-installer firmware-amd-graphics intel-microcode firmware-realtek firmware-atheros firmware-libertas firmware-brcm80211 grub-efi

RUN useradd -m decripto && echo "decripto:decripto" | chpasswd && adduser decripto sudo

RUN systemctl disable tor
RUN systemctl enable ufw


USER decripto
WORKDIR /home/decripto
