#!/bin/bash
source .env
read -p "Do You want to reset the Database? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Remove Docker Cotainer"
    docker-compose down

    DIR="./${LOCAL_DATA_STORAGE}/"
    echo "Check Data Directory ./${LOCAL_DATA_STORAGE}/ "
    if [ -d "$DIR" ]; then
        echo "Remove Data from Directory"
        sudo rm -r "./${LOCAL_DATA_STORAGE}/"
    fi
    echo "Create Init File"
    (envsubst <mongo-init-template.txt)>mongo-init.js
fi

echo "Starting Docker"
docker-compose up