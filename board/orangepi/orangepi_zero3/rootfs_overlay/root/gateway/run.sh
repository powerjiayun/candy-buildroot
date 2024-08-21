#!/bin/sh

cd $(dirname $(readlink -f "$0"))

# fix file permissions lost by git
chmod 0640 config/dae/config.dae

# pull
docker compose pull

# up
docker compose up -d
