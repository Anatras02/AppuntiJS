### Eseguire il Programma

#### Opzione 1: Utilizzare lo Script `start.sh`

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
3. Esegui lo script:
   ```sh
   ./start.sh
   ```
   In caso di problemi relativi ai permessi, esegui il seguente comando e riprova:
   ```powershell
   Set-ExecutionPolicy RemoteSigned
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

### Nota

Assicurati di avere Docker, Docker Compose e Git installati sul tuo sistema prima di procedere. Se stai eseguendo lo script `start.sh` su Windows, potrebbe essere necessario eseguirlo come amministratore per garantire che tutti i comandi siano eseguiti correttamente.
