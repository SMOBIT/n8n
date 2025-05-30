# n8n-Basisimage
FROM n8nio/n8n:latest

USER root

# 1) Mammoth (JS-Library) global installieren
RUN npm install -g mammoth

# 2) Pandoc-CLI (echte Binary) über apt-get hinzufügen
RUN apt-get update && \
    apt-get install -y pandoc && \
    rm -rf /var/lib/apt/lists/*

# Zurück zum n8n-User
USER node
