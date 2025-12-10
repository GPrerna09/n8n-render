# Base image
FROM n8nio/n8n:latest

# Set the default user
USER root

# Create n8n directory
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Required for Render free tier (runs N8N in main mode)
ENV EXECUTIONS_PROCESS=main

# Expose n8n port
EXPOSE 5678

# Switch back to node user
USER node

# Start n8n
CMD ["n8n"]
