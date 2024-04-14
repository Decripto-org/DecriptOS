#!/bin/bash

systemctl enable ufw

chmod +x /usr/share/backgrounds/wp.sh
ln -s /opt/dinit.sh /usr/bin/
chmod +x /usr/bin/dinit.sh
ln -s /opt/scream.sh /usr/bin/
chmod +x /usr/bin/scream.sh

rm /usr/lib/python3.11/EXTERNALLY-MANAGED

chmod -R 777 /opt/

update-initramfs -u

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"| tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt -y install brave-browser

echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt update
apt -y install sublime-text

cd /etc/skel/Desktop
chmod -R +x *
cd /opt/
dpkg -i obsidian*
git clone https://github.com/brainfucksec/kalitorify
cd kalitorify
make install
cd /opt/
rm -rf kalitorify
./burpsui*
# Mullvad
curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/beta $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list
apt update
apt install mullvad-vpn

dpkg -i discord*
dpkg -i Wasa*
dpkg -i veracrypt*
dpkg -i Bisq*
dpkg -i sparrow*
dpkg -i zoom*
dpkg -i Guarda*
dpkg -i exodus*
dpkg -i vdhco*
rm -rf *.deb
rm -rf Kraken-main.zip
rm -rf holehe-master.zip
rm -rf tor-browser-linux*
rm -rf tsetup*
cd Wallets
chmod -R +x *
cd
rm -rf /opt/VBox*

pip3 install kivy
pip3 install opentimestamps-client

cd /etc/skel/Tools/tor-browser/
chmod -R 777 *

cd

echo "remember to clean history and also delete this script"
