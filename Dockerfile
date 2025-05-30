# Nutzt das offizielle n8n-Image als Basis
FROM n8nio/n8n:latest

USER root

# Installiert mammoth global, damit es in allen Function-Nodes verfügbar ist
RUN npm install -g mammoth

USER node
