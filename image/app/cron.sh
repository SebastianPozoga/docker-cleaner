#!/bin/sh
set -e

# Run every 2 hours at 46 mins past the hour
echo "46 */2 * * * /app/clear.sh" | crontab -

crond -f -L -
