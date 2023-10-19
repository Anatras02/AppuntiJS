#!/bin/bash

# Pulla il repository
git pull origin main --no-edit

# Costruisci e avvia i container con Docker Compose
docker-compose build && docker-compose up -d
xdg-open http://localhost:8887
    