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
lb config -b iso --cache true --apt-recommends true -a amd64 --binary-images iso --debian-installer live --linux-flavours amd64 --mode debian --debian-installer-gui true --archive-areas "main contrib non-free" --security true --win32-loader false --interactive shell --updates true --iso-application decriptOS --iso-publisher https://decripto.org --iso-volume DecriptOS --memtest none --bootloaders grub-efi --binary-filesystem fat32 --bootloaders grub-legacy --bootloaders grub-pc --bootloaders syslinux --bootappend-live "boot=live config username=decripto"
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
apt -y install cinnamon python3 python3-full python3-pip python3-virtualenv git firefox-esr qtqr kleopatra scdaemon keepassxc zulucrypt-gui printer-driver-all searchmonkey firmware-linux firmware-linux-nonfree firmware-misc-nonfree linux-image-amd64 linux-headers-amd64 firmware-iwlwifi squashfs-tools syslinux-common syslinux-utils xorriso isolinux wireshark gedit simplescreenrecorder kate libreoffice curl tor unzip macchanger iptables libportaudio2 flameshot gimp httrack mousepad httraqt stacer autopsy secure-delete ffmpeg vlc libsecp256k1-0 evince python3-tk hashcat libwxgtk3.0-gtk3-0v5 gir1.2-gtop-2.0 libc++1 shotwell libgconf-2-4 librsvg2-bin firmware-atheros firmware-realtek firmware-amd-graphics clementine audacity dragonplayer viewnior flowblade gufw zenity software-properties-common obs-studio synaptic gdebi firmware-b43-installer firmware-amd-graphics intel-microcode firmware-realtek firmware-atheros firmware-libertas firmware-brcm80211 grub-efi npm mpg123 redshift redshift-gtk ntp firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-ipw2x00 firmware-intelwimax firmware-libertas firmware-netxen firmware-zd1211 b43-fwcutter firmware-b43-installer firmware-b43legacy-installer firmware-intel-sound firmware-sof-signed mesa-va-drivers intel-microcode i965-va-driver-shaders intel-media-va-driver-non-free inkscape linux-headers-5.10.0-25-amd64 vim nmap net-tools libegl1-mesa libgl1-mesa-glx libxcb-cursor0 libxcb-xtest0 ibus thunderbird libopengl-dev apt-utils firmware-netronome firmware-netxen firmware-myricom firmware-libertas debconf debconf-i18n firmware-qlogic firmware-siano firmware-sof-signed hdmi2usb-fx2-firmware pcscd python3-netaddr firmware-intel-sound firmware-ath9k-htc firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-cavium firmware-intel-sound firmware-ipw2x00 firmware-ivtv vim grub-common grub2-common timeshift nvidia-detect golang-go pm-utils exiftool gnome-calculator
```
A questo punto copiamo tutti i file con le configurazioni che potrebbero servirci dal nostro ambiente di produzione, avviando lo script `skelcopy.sh` in un altra finestra di terminale (a breve caricheremo tutte le configurazioni e i tool su GitHub).
Questo copierà tutto il necessario nelle cartelle del sistema operativo e le personalizzazioni dell'utente nell'apposita cartella /etc/skel.
Ora possiamo lanciare lo script `scripts.sh` per installare i tool e perfezionare le configurazioni.
Puliamo alcuni file superflui, come lo script appena lanciato.
Infine, terminiamo digitando
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





