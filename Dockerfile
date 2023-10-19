# Usa un'immagine base ufficiale di Jupyter
FROM jupyter/base-notebook:latest

# Copia il tuo notebook nel container
COPY ./ /home/jovyan/work/

# Imposta il permesso di scrittura sulla directory di lavoro e sulle directory Jupyter
USER root

# Installa il kernel Node.js per Jupyter
RUN apt-get update && apt-get install -y nodejs npm && \
    npm install -g --unsafe-perm ijavascript && \
    ijsinstall --install=global

RUN sudo chmod -R 777 /home/jovyan/

# Torna all'utente jovyan dopo aver installato Node.js e il kernel
USER jovyan
