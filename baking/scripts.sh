#!/bin/bash

chown decripto /usr/share/backgrounds/decriptoWP
chown decripto /usr/share/backgrounds/decriptoWP/*
chown decripto /usr/share/backgrounds/wp.sh
chmod +x /usr/share/backgrounds/wp.sh
chmod +x /home/decripto/Tools/Kraken-main/kraken.py 
ln -s /home/decripto/Tools/Kraken-main/kraken.py /usr/bin/
chmod +x /usr/bin/kraken.py
chmod +x /home/decripto/Tools/SubDomainizer/SubDomainizer.py
ln -s /home/decripto/Tools/SubDomainizer/SubDomainizer.py /usr/bin/
chmod +x /usr/bin/SubDomainizer.py 
chmod +x /home/decripto/Tools/theHarvester/theHarvester.py
chmod +x /home/decripto/Tools/nikto/program/nikto.pl
ln -s /home/decripto/Tools/nikto/program/nikto.pl /usr/bin/
chmod +x /usr/bin/nikto.pl
chmod +x /home/decripto/Tools/dinit.sh
ln -s /home/decripto/Tools/dinit.sh /usr/bin/
chmod +x /usr/bin/dinit.sh

update-initramfs -u

curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

cd /home/decripto/Tools
dpkg -i obsidian*
cd kalitorify
make install
cd /home/decripto/Tools
cd holele-master
python3 setup.py install
cd /home/decripto/Tools
./burpsui*
dpkg -i Mullvad*
dpkg -i discord*
dpkg -i Wasa*
rm -rf *.deb
rm -rf Kraken-main.zip
rm -rf holele-master.zip
rm -rf tor-browser-linux*
rm -rf tsetup*
cd
rm -rf /etc/skel/*
rm -rf /home/decripto/Documents/skelcopy.sh
rm -rf /home/decripto/Documents/steps

echo "remember to also delete this script"
