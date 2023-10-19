## Ecco come abbiamo realizzato DecriptOS!

Per prima cosa, in una vm basata su debian bullseye, abbiamo creato l'ambiente di lavoro di DecriptOS, configurando tutti i tool, i menu, la parte grafica, le feature e scaricando i file di installazione che vogliamo siano presenti nella distro.
Poi abbiamo installati i pre-requisiti per avviare la fase di creazione della iso.
```
sudo apt install live-build squashfs-tools syslinux-common syslinux-utils xorriso isolinux
```
Quindi abbiamo creato una cartella in cui andare a mettere tutti i file per la creazione della iso, chiamata distro.
```
mkdir distro
```
Poi abbiamo posizionato il nostro terminale in questa cartella
```
cd distro
```
e abbiamo impostato i parametri della nostra iso.
```
lb config -b iso --cache true --apt-recommends true -a amd64 --binary-images iso --debian-installer live --linux-flavours amd64 --mode debian --debian-installer-gui true --archive-areas "main contrib non-free" --security true --win32-loader false --interactive shell --updates true --iso-application decriptOS --iso-publisher https://decripto.org --iso-volume decripto --memtest none --bootloaders grub-efi --binary-filesystem fat32 --bootloaders grub-legacy --bootloaders grub-pc --bootloaders syslinux
```
Poi, ottenendo i permessi di root
```
sudo -s
```
possiamo avviare la creazione dell'ambiente di sviluppo della distro (potrebbe volerci un pò')
```
lb build
```
Una volta terminata questa fase, abbiamo una versione di debian super minimal su cui lavorare e nella quale installare e configurare ciò che ci serve. Per prima cosa installiamo i pacchetti che vogliamo nella nostra distro dai repository ufficiali di debian.
```
apt install cinnamon python3 python3-full python3-pip python3-virtualenv git firefox-esr qtqr kleopatra scdaemon keepassxc zulucrypt-gui printer-driver-all searchmonkey firmware-linux firmware-linux-nonfree firmware-misc-nonfree linux-image-amd64 linux-headers-amd64 firmware-iwlwifi squashfs-tools syslinux-common syslinux-utils xorriso isolinux wireshark gedit simplescreenrecorder kate libreoffice curl tor unzip macchanger iptables libportaudio2 flameshot gimp httrack mousepad httraqt stacer autopsy secure-delete ffmpeg vlc libsecp256k1-0 evince python3-tk hashcat libwxgtk3.0-gtk3-0v5 gir1.2-gtop-2.0 libc++1 shotwell libgconf-2-4 librsvg2-bin firmware-atheros firmware-realtek firmware-amd-graphics clementine audacity dragonplayer viewnior flowblade gufw zenity software-properties-common obs-studio synaptic gdebi firmware-b43-installer firmware-amd-graphics intel-microcode firmware-realtek firmware-atheros firmware-libertas firmware-brcm80211 grub-efi npm mpg123 redshift redshift-gtk ntp firmware-realtek firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-ipw2x00 firmware-intelwimax firmware-libertas firmware-netxen firmware-zd1211 b43-fwcutter firmware-b43-installer firmware-b43legacy-installer firmware-intel-sound firmware-sof-signed mesa-va-drivers intel-microcode i965-va-driver-shaders intel-media-va-driver-non-free inkscape linux-headers-5.10.0-25-amd64 vim nmap net-tools libegl1-mesa libgl1-mesa-glx libxcb-cursor0 libxcb-xtest0 ibus
```
A questo punto copiamo tutti i file con le configurazioni che potrebbero servirci, avviando lo script skelcopy.sh in un altra finestra di terminale.
Questo copierà tutto il necessario nelle cartelle del sistema operativo e le personalizzazioni dell'utente nell'apposita cartella /etc/skel.
Ora possiamo creare il nostro utente, che si chiamerà decripto e per il quale useremo la password decripto.
```
adduser decripto
```
Per poter usare il comando sudo per le operazioni che richiedono privilegi amministrativi, aggiungiamo l'utente decripto ai sudoers, modificando il file /etc/sudoers.
```
nano /etc/sudoers
```
aggiungendo la riga
```
decripto ALL=(ALL:ALL) ALL
```
sotto la riga
```
root ALL=(ALL:ALL) ALL
```
Nel file sudoers, aggiungiamo anche la riga seguente, in modo che lo script mac_random.sh possa assegnarci un mac address casuale ad ogni avvio senza richiedere la password dell'utente decripto.
```
decripto ALL=(ALL) NOPASSWD: /home/decripto/Tools/mac_random.sh
```
Poi, facciamo in modo che il servizio tor non sia attivo di default (per evitare conflitti con il proxy anonimo predispsto) e abilitiamo il firewall all'avvio.
```
systemctl disable tor
systemctl enable ufw
```
Installiamo tutti gli altri tool, avviando lo script scripts.sh, cancelliamo lo script e, infine, terminiamo digitando
```
exit
```
Ora non ci resta che aspettare che il procedimento termini (in base alla potenza del processore potrebbero volerci un po' di minuti).
Alla fine, se non ci sono stati errori, troveremo il file iso nella cartella distro che abbiamo creato.
Per fare in modo che la iso venga riconosciuta da programmi come Balena Etcher o Rufus e poter essere flashata su una USB, usiamo il comando
```
isohybrid DecriptOS.iso
```
Buon divertimento!





