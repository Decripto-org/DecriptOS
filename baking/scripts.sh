#!/bin/bash

systemctl disable tor
systemctl enable ufw

chmod +x /usr/share/backgrounds/wp.sh
chmod +x /usr/bin/dinit.sh
ln -s /opt/scream.sh /usr/bin/
chmod +x /usr/bin/scream.sh

chmod -R +x /opt/
# needed by subdomainizer
chmod -R 777 /usr/local/lib/python3.9/dist-packages/tldextract/.tld_set

update-initramfs -u

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt update
apt install sublime-text

cd /etc/skel/Tools
dpkg -i obsidian*
cd kalitorify
make install
cd /etc/skel/Tools
rm -rf kalitorify
./burpsui*
dpkg -i Mullvad*
dpkg -i discord*
dpkg -i Wasa*
dpkg -i veracrypt*
dpkg -i Bisq*
dpkg -i sparrow*
dpkg -i zoom*
rm -rf *.deb
rm -rf Kraken-main.zip
rm -rf holehe-master.zip
rm -rf tor-browser-linux*
rm -rf tsetup*
cd
rm -rf /etc/skel/Documents/skelcopy.sh
rm -rf /etc/skel/Documents/steps
rm -rf /etc/skel/Tools/burp*

echo "remember to also delete this script"
