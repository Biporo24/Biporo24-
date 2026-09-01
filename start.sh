#!/bin/bash

echo "🚀 Starting Hermes Gateway..."
echo "Environment: Render.com"
echo "Telegram Bot: @PAAOBip_bot (Bác sĩ Mai)"

# Set webhook URL from Render's environment variable
export TELEGRAM_WEBHOOK_URL="https://${RENDER_EXTERNAL_URL}/telegram"

echo "Webhook URL: $TELEGRAM_WEBHOOK_URL"

# Start gateway
hermes gateway start

# Keep container running and show logs
tail -f /root/.hermes/logs/gateway.log
