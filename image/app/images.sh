#!/bin/sh
# see: https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
set -e

echo "Clean docker images"
sh -c -x `docker rmi $(docker images --filter "dangling=true" -q --no-trunc)` ||:
sh -c -x `docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')` ||:
