
# Comandi del Terminale per Decripto OS

Il terminale è un'interfaccia testuale attraverso la quale è possibile interagire con il sistema operativo Linux. I seguenti comandi sono fondamentali per iniziare a lavorare con il terminale.

## Comandi generali

**1. `ls` - Elenco dei file e delle cartelle**

Questo comando elenca i file e le cartelle presenti nella directory corrente.

Esempio:
```
ls
```

puoi anche usarlo per avere l'anteprima di determinate cartelle o file partendo dal nome intero o parziale:

```
ls nome_cartella 
ls nome*
ls *cartella
ls *tella*
```

**2. `cd` - Cambio directory**

Questo comando consente di spostarsi tra le cartelle. Puoi specificare una directory assoluta o relativa.

Esempi:
```
cd /percorso/assoluto
cd cartella_di_destinazione
cd .. (per tornare alla cartella padre)
cd ~ (per tornare alla tua directory home, oppure anche solo cd)
```

**3. `mkdir` - Crea una nuova cartella**

Questo comando crea una nuova cartella nella directory corrente o in una specifica posizione.

Esempi:
```
mkdir nuova_cartella
mkdir /percorso/esistente/nuova_cartella
```

**4. `touch` - Crea un nuovo file**

Questo comando crea un nuovo file vuoto nella directory corrente o in una specifica posizione.

Esempi:
```
touch nuovo_file.txt
touch /percorso/esistente/nuovo_file.txt
```

**5. `rm` - Rimuovi file e cartelle**

Questo comando rimuove file e cartelle. Utilizza con cautela poiché i file eliminati non vengono spostati nel cestino, ma vengono cancellati definitivamente.

Esempi:
```
rm file_da_rimuovere.txt
rm -r cartella_da_rimuovere
rm -d cartella_vuota_da_rimuoveree
```

**6. `cp` - Copia file e cartelle**

Questo comando copia file e cartelle da una posizione all'altra.

Esempi:
```
cp file_da_copiare.txt /percorso/destinazione
cp -r cartella_da_copiare /percorso/destinazione
```

**7. `mv` - Sposta o rinomina file e cartelle**

Questo comando sposta o rinomina file e cartelle.

Esempi:
```
mv file_da_spostare.txt /percorso/destinazione
mv vecchio_nome.txt nuovo_nome.txt
```

**8. `cat` - Mostra il contenuto di un file**

Questo comando visualizza il contenuto di un file sul terminale.

Esempio:
```
cat file_da_visualizzare.txt
```

**9. `grep` - Cerca all'interno di file**

Questo comando cerca una determinata stringa all'interno di uno o più file.

Esempio:
```
grep "parola_da_cercare" file_di_riferimento.txt
```

**10. `sudo` - Esegui comandi come amministratore**

Questo comando esegue il comando successivo con privilegi di amministratore (sudo = super user do). 

Esempio:
```
sudo apt update
sudo apt upgrade
```

**11. `open` - apre un file o una cartella**

Questo comando apre un file con il programma di default oppure una cartella.

Esempio:
```
open cartella 
open . (apre la cartella dove sei attualmente)
open file.txt
```

**12. `ip addr` - mostra le specifiche dell'indirizzo IP**

Esempio:
```
ip addr
```

**13. `passwd` - imposta la password del sistema**

Esempio:
```
sudo passwd
```

**13. `ip addr` - mostra le specifiche dell'indirizzo IP**

Esempio:
```
ip addr
```

**14. `ssh-keygen` - generazione di una chiave SSH**

Esempio:
```
ssh-keygen -t ed25519 -C james.moriarty@decripto.org
```

Per collegare GitHub tramite ssh:

- ssh-keygen -t ed25519 -C james.moriarty@decripto.org

[enter the file in which to save the key or skip to keep `/home/decripto/.ssh/id_ed25519`]

[enter password or skip]

- compiare la chiave SSH nel file .pub nella cartella `/home/decripto/.ssh/` (una cosa tipo: `ssh-ed25519 AAAAC3NzaCC1.....7kX0J`)

- aprire github e andare sotto settings, SSH, nuova, incolla e dai un nome


# Comandi di Decripto OS

Decripto OS ha diversi "shortcut" da terminale che ti permettono di velocizzare il lavoro, alcuni servono per avviare dei programmi, altri per creare templates.

**1. `dinit` - Inizializza una cartella di lavoro locale**

Questo comando inizializza una cartella, creando i file bozza-articolo.md, materiale.md nella cartella "materiale" e report.md, nella cartella corrente. I file sono dei templates che aiuteranno a velocizzare la raccolta e l'organizzazione del materiale inerente un determinato progetto sotto analisi.

Esempio:
```
dinit.sh
```

**2. `kraken` - Avvia il Kraken**

Questo comando avvia il programma Kraken nel terminale, che assiste durante l'indagine automatizzando alcuni processi, come l'apertura delle tab e il salvataggio di alcuni dati.

Esempio:
```
kraken (avvio standard)
kraken -h (messaggio di aiuto)
```

# Comandi Git per sincronizzare le cartelle con GitHub

Git è un sistema di controllo versione distribuito ampiamente utilizzato. Qui di seguito troverai alcuni comandi principali per sincronizzare le cartelle con GitHub utilizzando Git.

**1. `git init` - Inizializza un repository Git locale**

Questo comando inizializza un nuovo repository Git locale nella directory corrente.

Esempio:
```
git init
```

Poi configura git con la branch main:
```
git config --global init.default branch main
```

per creare o rinominare la branch principale in "main":
```
git branch -M main
```

e configura le tue credenziali per i commit:
```
git config --global user.name "James Moriarty"
git config --global user.email james.moriarty@decripto.org
```

**2. `git clone` - Clona un repository esistente**

Questo comando clona un repository Git esistente da GitHub nella directory corrente.

Esempio:
```
git clone https://github.com/utente/repository.git
```

**3. `git status` - Controllare lo status della cartella e dei file**

Esempio:
```
git clone https://github.com/utente/repository.git
```

**4. `git diff` - Mostra le differenze tra l'ultimo commit e il file attuale**

Può anche essere usato per mostrare le differenze tra 2 branch con `..`

Esempio:
```
git diff main..altra-branch
```

**5. `git add` - Aggiunge file al repository**

Questo comando aggiunge uno o più file al repository Git.

Esempio:
```
git add file_da_aggiungere.txt
```

oppure per aggiungerli tutti usare `add .`

Esempio:
```
git add .
```

**6. `git commit` - Effettua una commit delle modifiche**

Questo comando crea una nuova commit con le modifiche effettuate. Il parametro `-m` permette di inserire il commento di seguito.

Esempio:
```
git commit -m "Descrizione delle modifiche"
```

Nota bene: se non verrà aggiunto una descrizione al commit, verrà aperto vim da terminale per inserirlo. Vim è un dito in culo, quindi inserite sempre subito il messaggio.

Per inserire la descrizione con vim:
- premere il tasto i per inserire del testo
- scrivere la descrizione 
- premere Esc per uscire dalla modalità inserimento
- premere `:wq` per scrivere e uscire 

**7. `git push` - Sincronizza le modifiche remote**

Questo comando invia le commit locali al repository remoto su GitHub.

Esempio:
```
git push origin nome_branch
```

**8. `git pull` - Aggiorna il repository locale**

Questo comando aggiorna il repository locale con le modifiche dal repository remoto su GitHub.

Esempio:
```
git pull origin nome_branch
```

Questi sono solo alcuni dei comandi più comuni utilizzati nel terminale di una distribuzione Linux basata su Debian e per lavorare con Git. Sono disponibili molti altri comandi e opzioni che puoi esplorare ulteriormente.
