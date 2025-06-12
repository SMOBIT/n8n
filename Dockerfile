FROM n8nio/n8n:latest

USER root

RUN npm install -g mammoth

RUN apt-get update && \
    apt-get install -y pandoc && \
    rm -rf /var/lib/apt/lists/*

USER node
