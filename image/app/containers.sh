#!/bin/sh
# see: https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
set -e

echo "Clean docker containers"
sh -c -x `docker rm $(docker ps -qa --no-trunc --filter "status=exited")` ||:
