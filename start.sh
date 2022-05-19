#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset
echo  "╔════════════════════════════════════════════════════════════╗"
echo  "║     start.sh BASH scipt                                    ║"
echo  "║     Author        : Zoltán Forray                          ║"
echo  "║     version 1.0.2 :                                        ║"
echo  "║                                                            ║"
echo  "║                                                            ║"
echo  "╚════════════════════════════════════════════════════════════╝"
trap "set +x; sleep 1; set -x" DEBUG
source .env

docker-compose  -p ${CONTEXT} up --detach
docker logs ${CONTEXT}-jenkins-1