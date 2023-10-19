REM Pulla il repository
git pull origin main --no-edit

REM Costruisci e avvia i container con Docker Compose
docker-compose build
docker-compose up -d

REM Apri il browser alla pagina del Jupyter Notebook
start http://localhost:8887
