#!/bin/bash

# Pulla il repository
git pull origin main

# Costruisci e avvia i container con Docker Compose
docker-compose build && docker-compose up -d

# Rileva il sistema operativo e apri il browser
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    xdg-open http://localhost:8887
elif [[ "$OSTYPE" == "msys" ]]; then
    # Windows
    start http://localhost:8887
else
    echo "Sistema operativo non supportato"
fi
