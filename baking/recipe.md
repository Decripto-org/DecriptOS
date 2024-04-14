## Ecco come abbiamo realizzato DecriptOS!

Per prima cosa, in una vm basata su Debian 12 BookWorm, abbiamo creato l'ambiente di lavoro di DecriptOS, configurando tutti i tool, i menu, la parte grafica e le feature così come vogliamo siano presenti nella distro.

Dopodiché abbiamo crato una cartella apposita
```
mkdir decriptOS
```
e la abbiamo predisposta per la creazione della iso, con il comando
```
lb config
```
Quindi abbiamo inserito nella cartella tutti i file presenti nella cartella baking di questo repository e, nella cartella includes.chroot abbiamo aggiunto tutti i file che ci servono per la personalizzazione della distro (ad esempio le cartelle con le configurazioni del desktop, i file .deb da installare, la personalizzazione del browser, le icone, ecc.).
Poi abbiamo installati i pre-requisiti per avviare la fase di creazione della iso.
```
sudo apt install live-build squashfs-tools syslinux-common syslinux-utils xorriso isolinux
```
Poi, ottenendo i permessi di root
```
sudo -s
```
possiamo avviare la creazione dell'ambiente di sviluppo della distro (potrebbe volerci un pò')
```
lb build
```
Durante il processo di creazione, dal momento he abbiamo impostato i parametri per fornirci una shell interattiva, avviamo anche l'apposito script `scripts.sh` che andrà a completare la personalizzazione della distro.
Dopoiché non ci resta che pulire tutto, cancellando lo script e lo storico dei comandi
```
rm scripts.sh
history -c
```
e terminare il processo digitando
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





