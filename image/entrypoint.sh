#!/bin/sh
set -e

case ${1} in
  clear)
    sh -x /app/clear.sh
    ;;
  cron)
    sh -x /app/cron.sh
    ;;
esac
