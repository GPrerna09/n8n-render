FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Basic auth (change the password later)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=password123

# Webhook URL (you will update it after Render deploys)
ENV WEBHOOK_URL=""

EXPOSE 5678

CMD ["n8n"]
