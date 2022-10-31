#!/bin/sh

# Terminate the script on first error.
set -eu

# Create directory for logs.
mkdir -p /app/var/log

# Load cron configuration.
crontab /app/etc/crontab
echo "Cron has been configured." >> /app/var/log/cron.log

# Start cron as a daemon.
cron
echo "Cron has been started." >> /app/var/log/cron.log

# Main app
echo "Starting web server (Caddy)..."
cd /app/etc/caddy
caddy run
