# Use official prebuilt n8n image
FROM n8nio/n8n:latest
USER root

# Install the custom LangChain nodes
RUN npm install @n8n/n8n-nodes-langchain

USER node
