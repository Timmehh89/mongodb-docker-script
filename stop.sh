#!/bin/bash
source .env
read -p "Do You want to reset the Database? " -n 1 -r
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Stop mongodb docker container"
docker-compose -f $DIR/docker-compose.yml down