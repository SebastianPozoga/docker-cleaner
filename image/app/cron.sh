#!/bin/sh
set -e

# Run every 2 hours at 46 mins past the hour per default if no second argument is given
echo "${2:-46 */2 * * *} /app/clear.sh" | crontab -

#crond -f -L -
