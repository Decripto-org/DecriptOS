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

## Avvio o installazione

Per avviare o installare DecriptOS, segui i seguenti passaggi:

1. Scarica l'immagine ISO di DecriptOS da [questo link](https://e.pcloud.link/publink/show?code=XZXJofZm4QcwaQXEwLqiWMutlYW3LGQuQcX).
2. Crea un supporto di installazione avviabile (es. una chiavetta USB o una virtual machine) utilizzando l'immagine ISO.

   2.1 Flashing del file .iso su USB per usalo tramite reboot:

    - Una chiavetta USB da almeno 8Gb
    - [Rufus](https://rufus.ie/it/) se si fa da Windows

    ![image_2023-07-02_16-01-20](https://github.com/Decripto-org/DecriptOS/assets/134168296/fc71fd29-c982-44c1-9084-f45ddd16d331)

    oppure [Unebootin](https://unetbootin.github.io/) se si fa da Mac OS:

    - una volta scaricato premere il tasto destro e cliccare su "Apri" (potrebbe essere necessario farlo un paio di volte)

    <img width="478" alt="Screenshot 2023-07-02 alle 17 21 41" src="https://github.com/Decripto-org/DecriptOS/assets/134168296/c4445a22-51c7-41db-9b59-d08eeb36ee37">

    poi selezionare il file .iso e la chiavetta USB

    <img width="533" alt="image" src="https://github.com/Decripto-org/DecriptOS/assets/134168296/73edf885-9638-491a-a1d7-8a7fe46f2dbd">

    e avviare l'operazione.

4. Avvia il tuo computer (o la virtual machine) utilizzando il supporto di installazione, tenendo premuto `Alt` (da Mac) o `esc` o `F12` (da Windows).

   da Mac selezionare il supporto `EFI Boot`:

   ![image](https://github.com/Decripto-org/DecriptOS/assets/134168296/ed3323d8-39f1-4630-98d5-649dfab080f0)

   da Windows selezionare il supporto `USB - UEFI OS`:

   ![image](https://github.com/Decripto-org/DecriptOS/assets/134168296/a4561aac-5c4d-4522-8e31-5638cab3b5b6)


5. Dal menu di boot scegli "Live system" per provare la distro (consigliato) o "Start installer" per avviare l'installazione sul computer seguendo le istruzioni.

![image](https://github.com/Decripto-org/DecriptOS/assets/134168296/a483a07d-f9d5-4bee-8d9c-33c68a945872)

   5.1. Se decidi di installare il sistema operativo (tipo su un vecchio computer), come username imposta `decripto`, altrimenti alcuni tool potrebbero non funzionare correttamente.

## Cose da fare all'avvio (live)

1. Cambiare il layout della tastiera, andando sotto Menu --> Preferences --> Keyboard --> Layouts --> + --> Italian
2. Impostare una password per keyring dal terminale con `sudo passwd` e poi inserendola (se desiderato). Le altre password di default sono `decripto`.
3. Collegarsi al WiFi (se da USB)
4. Controllare data e ora, se necessario, sincronizzare il sistema operativo con il fuso orario attuale.
5. Aggiornare il sistema operativo, nel terminale digita `sudo apt update`, premi invio, inserisci la password (`decripto` di default) premi invio, una volta finito digita `sudo apt upgrade` e premi invio, se necessario quando richiesto digita `yes` per i pacchetti aggiuntivi.
6. Configurare le proprie credenziali su git andando nel terminale e digitando `git config --global user.name "Tuo Nome"` e poi `git config --global user.email latua@email.com`.
 

## Disclaimer

DecriptOS è fornita "così com'è" e senza alcuna garanzia, esplicita o implicita, inclusa, ma non limitata a, garanzie di commerciabilità, idoneità per uno scopo particolare e non violazione. In nessun caso gli sviluppatori di DecriptOS saranno responsabili per qualsiasi richiesta, danni o altre responsabilità, sia in azione di contratto, negligenza o altro, derivanti da, o in connessione con la distribuzione o l'uso di DecriptOS o altri affari inerenti a DecriptOS.

---

**Nota:** Essendo ancora in fase di test, se riscontri anomalie o noti che manca qualcosa o vorresti aggiungere qualcosa di default, clicca in alto nella tab `Issues` e crea una nuova issue (un memo) spiegando cosa hai trovato o cosa sistemare.

**Licenza:** Nel file [LICENSE](https://github.com/Decripto-org/DecriptOS/blob/main/LICENSE) potrai trovare tutti i dettagli sulla licenza di utilizzo.

