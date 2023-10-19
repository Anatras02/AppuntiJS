### Prerequisiti

- **Docker:** Assicurati di avere Docker installato sul tuo sistema. Se non è installato, segui le istruzioni sulla [pagina di download di Docker](https://www.docker.com/products/docker-desktop) per installare Docker Desktop su Windows o Mac, o Docker Engine su sistemi Linux.

- **Docker Compose:** Deve essere installato insieme a Docker su Windows e Mac. Per i sistemi Linux, segui le istruzioni disponibili [qui](https://docs.docker.com/compose/install/) per installarlo.

- **Git:** Assicurati che Git sia installato sul tuo sistema per clonare il repository. Puoi scaricarlo da [qui](https://git-scm.com/).

### Eseguire il Programma

#### Opzione 1: Utilizzare lo Script `start.sh` o `start.bat`

##### Su Ubuntu

1. Apri il terminale.
2. Naviga nella directory del progetto.
3. Rendi `start.sh` eseguibile con il seguente comando:
   ```sh
   chmod +x start.sh
   ```
4. Esegui lo script:
   ```sh
   ./start.sh
   ```

##### Su Windows

1. Apri PowerShell o il prompt dei comandi come amministratore.
2. Naviga nella directory del progetto.
3. Esegui il file batch:
   ```cmd
   start.bat
   ```
   In caso di problemi relativi ai permessi, esegui il seguente comando in PowerShell e riprova:
   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

#### Opzione 2: Utilizzare Docker Compose Direttamente

1. Apri il terminale (su Ubuntu) o PowerShell/prompt dei comandi (su Windows).
2. Naviga nella directory del progetto.
3. Assicurati di avere l'ultima versione del codice con `git pull`.
4. Esegui i seguenti comandi per costruire e avviare i container:
   ```sh
   docker-compose build
   docker-compose up -d
   ```
   Oppure, puoi utilizzare un singolo comando per costruire e avviare i container:
   ```sh
   docker-compose up -d --build
   ```

5. Apri il browser e vai a [http://localhost:8887](http://localhost:8887) per accedere al notebook Jupyter.
