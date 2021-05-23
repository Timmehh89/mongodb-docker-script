#!/bin/bash
source .env
read -p "Do You want to reset the Database? " -n 1 -r
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo $DIR
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Remove Docker Cotainer"
    docker-compose -f $DIR/docker-compose.yml down

    DIRSTORAGE=$DIR/${LOCAL_DATA_STORAGE}/
    echo "Check Data Directory $DIRSTORAGE "
    if [ -d "$DIRSTORAGE" ]; then
        echo "Remove Data from Directory"
        sudo rm -r "$DIRSTORAGE"
    fi
    echo "Create Init File"
    (envsubst <$DIR/mongo-init-template.txt)>$DIR/mongo-init.js
fi

echo "Starting Docker"
docker-compose -f $DIR/docker-compose.yml up -d