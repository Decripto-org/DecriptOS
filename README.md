# DecriptOS

Benvenuti in DecriptOS, il sistema operativo che mette al centro la tua privacy, la tua sicurezza informatica e il mondo delle crypto. Con DecriptOS, avrai accesso a una distro Linux leggera, veloce e potente che ti permetterà di sfruttare appieno le potenzialità delle tecnologie emergenti.

La nostra priorità è la tua privacy. Con DecriptOS, puoi navigare in modo sicuro utilizzando TOR preconfigurato e sfruttando il nostro mac spoofing all'avvio per creare un nuovo computer virtuale ad ogni avvio. Inoltre, abbiamo incluso Brave e Firefox come browser, già configurati per garantire sicurezza, privacy e semplificare la gestione delle crypto.

Parlando di crypto, DecriptOS è il tuo alleato. Abbiamo incluso tutti i tool di cui hai bisogno: wallet crypto come Wasabi, Electrum, Feather e altri, estensioni per il browser, gestore dei pacchetti Linux per cercare nuovi strumenti e il tutto reso pubblico e trasparente, tramite GitHub per lo sviluppo open source.

Per la sicurezza informatica, DecriptOS è in prima linea. Abbiamo configurato Firefox con preferiti preimpostati per evitare siti di phishing e inclusi tool dedicati alla due diligence dei progetti crypto, tra cui alcuni creati dal nostro team. Inoltre, KeepassXC è incluso come password manager per garantire la massima sicurezza per le tue credenziali.

E non dimentichiamo la produttività! Abbiamo integrato LibreOffice per le tue esigenze di produttività, tool per la registrazione video come OBS e SimpleScreenRecorder, e persino un editor video come Flowblade. Inoltre, abbiamo incluso Obsidian per semplificare la gestione delle note e della raccolta dati nella due diligence.

DecriptOS è pensato per essere facile da usare e adattabile alle tue esigenze. Puoi eseguirlo direttamente da una chiavetta USB, senza rischi per i file del tuo sistema operativo principale. Inoltre, abbiamo incluso shortcut di sistema per creare template per il lavoro e comandi personalizzati, per semplificare le tue attività quotidiane.

E la cosa migliore di DecriptOS? È completamente personalizzabile! Possiamo creare build dedicate e personalizzate per te, per soddisfare al meglio le tue esigenze specifiche.

Non compromettere la tua privacy e la sicurezza delle tue crypto. Passa a DecriptOS e vivi l'esperienza di un sistema operativo dedicato alla privacy, alle crypto e alla sicurezza informatica come mai prima d'ora. Scopri DecriptOS, il tuo nuovo alleato nel web3.

## Funzionalità

- **Strumenti specializzati**: DecriptOS include una vasta gamma di strumenti preinstallati specifici per le indagini sulle criptovalute e sul Web3. Sono inclusi analizzatori blockchain, client Ethereum, scanner di contratti intelligenti e molto altro.

- **Ambiente sicuro**: La distribuzione è stata configurata per garantire un ambiente sicuro e isolato e attento alla privacy.

- **Aggiornamenti frequenti**: DecriptOS viene costantemente mantenuta e aggiornata dal team di sviluppo di Decripto.org. Gli utenti riceveranno regolarmente aggiornamenti di sicurezza e nuove funzionalità per rimanere al passo con gli sviluppi nel settore delle criptovalute e del Web3.

## Requisiti di sistema

Per utilizzare DecriptOS, il tuo sistema, o la tua virtual machine, devono soddisfare i seguenti requisiti minimi:

- Processore: 1 GHz o superiore
- RAM: 2 GB o superiore
- Spazio su disco: 20 GB o superiore (nel caso di virtual machine)
- Capienza USB (se si vuole usare tramite reboot): 8 GB o superiore
- Connessione Internet per gli aggiornamenti e il download delle risorse aggiuntive

## Avvio in modalità live

Per avviare e utilizzare DecriptOS, segui i seguenti passaggi:

1. Scarica l'immagine ISO di DecriptOS (versione 2.8) da [questo link](https://e.pcloud.link/publink/show?code=XZoypsZm4IVb9w5eG88npkAlnUW0SxnTfVV)
2. (opzionale) confronta gli hash del file scaricato con i seguenti:
   MD5: 2a0c9edd648db2efc6876f25d7e4f97e
   SHA256: b44b05ce5c2a8c5cf4e14273077ef7e381af64b5eb04371dd1a1a3e41818f02f
3. Crea un supporto di installazione avviabile (es. una chiavetta USB o una virtual machine) utilizzando l'immagine ISO appena scaricata.

   3.1 Flashing del file .iso su USB per usalo tramite reboot:

    - usa na chiavetta USB da almeno 8Gb
    
    - per scrivere la iso sulla chiavetta USB usa [Rufus](https://rufus.ie/it/) se operi da Windows

    oppure [Unebootin](https://unetbootin.github.io/) se operi da Mac OS:

    - una volta scaricato il tool premi il tasto destro e clicca su "Apri" (potrebbe essere necessario farlo un paio di volte)

    - poi seleziona il file .iso di DecriptOS e la chiavetta USB sulla quale vuoi scrivere il sistema operativo

    - avvia l'operazione.

4. Avvia il tuo computer scegliendo di avviare il sistema operativo installato sulla chiavetta USB, entrando nel menu che, in genere, appare tenendo premuto `Alt` (da Mac) o `esc` o `F12` (da Windows).

   - da Mac selezionare il supporto `EFI Boot`:

   - da Windows selezionare il supporto `USB - UEFI OS`:

   4.1. Se avvii il computer tramite BIOS con `F2` vai nella tab `Save & Exit` e seleziona la chiavetta USB con `UEFI`

5. Dal menu di boot scegli "Live system" per provare la distro (consigliato) o "Start installer" per avviare l'installazione sul computer seguendo le istruzioni.

   5.1. Se decidi di installare il sistema operativo (tipo su un vecchio computer), come username imposta `decripto`, altrimenti alcuni tool potrebbero non funzionare correttamente.

## Creazione di macchina virtuale con VirtualBox

1. Crea una nuova macchina virtuale impostando:
   - almeno 2 GB di RAM;
   - almeno 2 core (dipende dal processore principale, se si hanno almeno 16 core disponibili, assegnarne almeno 4 alla macchina virtuale);
   - creare un disco virtuale di almeno 25 GB;    
2. Nel menu dedicato all'archiviazione, seleziona il supporto ottico e scegliere come disco il file .iso di DecriptOS;
3. (opzionale) Personalizza la macchina virtuale:
   - impostando clipboard e drag&drop come bidirezionale (nella sezione Generale - Avanzate);
   - abilitando l'accelerazione 3D (nella sezione Schermo);
   - abilitando l'USB 3.0 (nella sezione USB);
4. Avvia la macchina virtuale;
5. Dal menu di avvio, scegli "Live system" per provare la distro o "Start installer" per avviare l'installazione sul computer seguendo le istruzioni;
6. Se installi la distro:
   - lascia vuoto il campo root password, cosicche l'utente che andrai a creare sarà abilitato ad utilizzare i comandi da amministratore con `sudo`;
   - ricordati di impostare l'username `decripto`, altrimenti alcuni tool potrebbero non funzionare correttamente;
8. Avvia la distro;
9. (opzionale) per una migliore esperienza utente, installa le VirtualBox Guest Additions. Per farlo:
    - dal menu in alto clicca su "Dispositivi" e "Inserimento immagine delle Guest Additions";
    - ora dovresti vedere, aprendo il file manager, un cd inserito, copiane il contenuto in una cartella, ad esempio dentro la cartella Documenti;
    - apri il tuo terminale e digita i comandi `cd Documenti` per posizionarti nella cartella Documenti e avere accesso ai file ivi contenuti;
    - digita il comando `chmod +x VBoxLinuxAdditions.run` per dare i permessi di esecuzione allo script;
    - lancia lo script con `sudo ./VBoxLinuxAdditions.run`, digitando la password che hai impostato per l'utente decripto in fase di installazione;
    - (opzionale) al termine dell'esecuzione dello script, cancella tutti i file che hai copiato nella cartella Documenti;
    - riavvia la macchina virtuale.



## Cose da fare all'avvio (live)

1. Cambiare il layout della tastiera, andando sotto Menu --> Preferences --> Keyboard --> Layouts --> + --> Italian o, tramite terminale, digitare `setxkbmap it`
2. Impostare una password per keyring dal terminale con `sudo passwd` e poi inserendola (se desiderato). Le altre password di default sono `decripto`.
3. Collegarsi al WiFi (se da USB)
4. Controllare data e ora, se necessario, sincronizzare il sistema operativo con il fuso orario attuale.
5. Aggiornare il sistema operativo, nel terminale digita `sudo apt update`, premi invio, inserisci la password (`decripto` di default) premi invio, una volta finito digita `sudo apt upgrade` e premi invio, se necessario quando richiesto digita `yes` per i pacchetti aggiuntivi.
6. Configurare le proprie credenziali su git andando nel terminale e digitando `git config --global user.name "Tuo Nome"` e poi `git config --global user.email latua@email.com`.
7. Se installato in VirtualBox, per evitare problemi di connettività, rimuovere lo script mac_random.sh, andando nel menu preferenze -> startup e togliere la spunta dalla voce corrispondente.
 

## Disclaimer

DecriptOS è fornita "così com'è" e senza alcuna garanzia, esplicita o implicita, inclusa, ma non limitata a, garanzie di commerciabilità, idoneità per uno scopo particolare e non violazione. In nessun caso gli sviluppatori di DecriptOS saranno responsabili per qualsiasi richiesta, danni o altre responsabilità, sia in azione di contratto, negligenza o altro, derivanti da, o in connessione con la distribuzione o l'uso di DecriptOS o altri affari inerenti a DecriptOS.

---

**Nota:** Essendo ancora in fase di test, se riscontri anomalie o noti che manca qualcosa o vorresti aggiungere qualcosa di default, clicca in alto nella tab `Issues` e crea una nuova issue (un memo) spiegando cosa hai trovato o cosa sistemare.

**Licenza:** Nel file [LICENSE](https://github.com/Decripto-org/DecriptOS/blob/main/LICENSE) potrai trovare tutti i dettagli sulla licenza di utilizzo.

