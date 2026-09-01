# Hermes Telegram Bot - Render Deployment

Bot Telegram 24/7 chạy trên Render.com

## Bot Information
- **Bot Name**: Bác sĩ Mai
- **Username**: @PAAOBip_bot
- **Platform**: Render.com (Free tier)
- **Mode**: Webhook

## Files
- `Dockerfile` - Container configuration
- `config.yaml` - Hermes configuration
- `.gitignore` - Git ignore rules
- `start.sh` - Startup script

## Environment Variables Required
Set these in Render Dashboard:

1. `ANTHROPIC_API_KEY` - Claude API key
2. `TELEGRAM_BOT_TOKEN` - Bot token from @BotFather
3. `TELEGRAM_ALLOWED_USERS` - Your Telegram user ID
4. `TELEGRAM_GROUP_ALLOWED_CHATS` - Group chat ID
5. `TELEGRAM_WEBHOOK_SECRET` - Random secret string
6. `TELEGRAM_WEBHOOK_URL` - https://your-app.onrender.com/telegram

## Deploy to Render
1. Push this repo to GitHub
2. Create new Web Service on Render
3. Connect this GitHub repo
4. Add environment variables
5. Deploy!

## Author
Thanh Nhan
