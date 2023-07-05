# DecriptOS

Benvenuto nella documentazione di DecriptOS, una distribuzione Linux progettata appositamente dal team di Decripto.org. DecriptOS è stata sviluppata per agevolare le indagini e la due diligence, oltre alla gestione sicura delle crypto. Questa distribuzione fornisce un insieme di strumenti e risorse specializzate per supportare gli investigatori di Decripto.org nelle loro attivitàe per chiunque voglia gestire le crypto in modo sicuro o fare due diligenge nel mondo web2 e web3.

## Vantaggi

Eseguire un reboot utilizzando il sistema operativo DecriptOS offre diversi vantaggi significativi:

1. Sicurezza potenziata: DecriptOS utilizza misure avanzate di sicurezza per proteggere il sistema operativo da minacce informatiche, malware e attacchi esterni. Un reboot con DecriptOS garantisce una partenza pulita e una protezione costante per i tuoi dati sensibili.

2. Privacy migliorata: Il reboot con DecriptOS cancella i residui digitali e le tracce di attività precedenti, preservando la tua privacy. Questo riduce il rischio di essere tracciato o compromesso da terze parti indesiderate.

3. Ottimizzazione delle risorse: Un reboot periodico con DecriptOS consente di liberare le risorse del sistema e ottimizzare le prestazioni del computer. Ciò garantisce un funzionamento fluido e veloce, consentendoti di sfruttare appieno le funzionalità del sistema operativo.

4. Accesso a nuove funzionalità e aggiornamenti: Durante un reboot con DecriptOS, puoi accedere a nuove funzionalità, miglioramenti di sicurezza e aggiornamenti di sistema. Questo assicura che il tuo sistema operativo sia sempre all'avanguardia e in grado di affrontare le sfide emergenti della sicurezza informatica.

5. Compatibilità con tecnologie emergenti: DecriptOS è progettato per supportare le tecnologie emergenti come la blockchain, il web3 e le crypto. Eseguendo un reboot con DecriptOS, puoi sfruttare appieno le potenzialità di queste tecnologie e partecipare in modo sicuro ed efficiente a transazioni e attività online basate su crypto e blockchain.

Complessivamente, un reboot con DecriptOS ti offre una maggiore sicurezza, privacy, prestazioni ottimizzate e accesso a funzionalità avanzate. Questi vantaggi ti consentono di godere di un'esperienza informatica sicura e senza interruzioni, mantenendo al contempo il controllo dei tuoi dati e delle tue attività online.

## Funzionalità

- **Strumenti specializzati**: DecriptOS include una vasta gamma di strumenti preinstallati specifici per le indagini sulle criptovalute e sul Web3. Sono inclusi analizzatori blockchain, client Ethereum, scanner di contratti intelligenti e molto altro.

- **Ambiente sicuro**: La distribuzione è stata configurata per garantire un ambiente sicuro e isolato e attento alla privacy.

- **Aggiornamenti frequenti**: DecriptOS viene costantemente mantenuta e aggiornata dal team di sviluppo di Decripto.org. Gli utenti riceveranno regolarmente aggiornamenti di sicurezza e nuove funzionalità per rimanere al passo con gli sviluppi nel settore delle criptovalute e del Web3.

## Requisiti di sistema

Per utilizzare DecriptOS, il tuo sistema, o la tua virtual machine, devono soddisfare i seguenti requisiti minimi:

- Processore: 1 GHz o superiore
- RAM: 2 GB o superiore
- Spazio su disco: 20 GB o superiore
- Capienza USB (se si vuole usare tramite reboot): 8 GB o superiore
- Connessione Internet per gli aggiornamenti e il download delle risorse aggiuntive

## Avvio o installazione

Per avviae o installare DecriptOS, segui i seguenti passaggi:

1. Scarica l'immagine ISO di DecriptOS da [questo link](https://e.pcloud.link/publink/show?code=XZO8MfZj8aDjKXyNQ56PuFml1gzcbGHPNR7).
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

## Cose da fare all'avvio

1. Cambiare il layout della tastiera, andando sotto Menu --> Preferences --> Keyboard --> Layouts --> + --> Italian
2. Impostare una password per keyring dal terminale con `sudo passwd` e poi inserendola (se desiderato). Le altre password di default sono `decripto`.
3. Collegarsi al WiFi (se da USB)
4. Aggiornare il sistema operativo, nel terminale digita `sudo apt update`, premi invio, inserisci la password (`decripto` di default) premi invio, una volta finito digita `sudo apt upgrade` e premi invio, se necessario quando richiesto digita `yes` per i pacchetti aggiuntivi.
 

## Disclaimer

DecriptOS è fornita "così com'è" e senza alcuna garanzia, esplicita o implicita, inclusa, ma non limitata a, garanzie di commerciabilità, idoneità per uno scopo particolare e non violazione. In nessun caso gli sviluppatori di DecriptOS saranno responsabili per qualsiasi richiesta, danni o altre responsabilità, sia in azione di contratto, negligenza o altro, derivanti da, o in connessione con la distribuzione o l'uso di DecriptOS o altri affari inerenti a DecriptOS.

---

**Nota:** Essendo ancora in fase di test, se riscontri anomalie o noti che manca qualcosa o vorresti aggiungere qualcosa di default, clicca in alto nella tab `Issues` e crea una nuova issue (un memo) spiegando cosa hai trovato o cosa sistemare.

**Licenza:** Nel file LICENSE potrai trovare tutti i dettagli sulla licenza di utilizzo.

