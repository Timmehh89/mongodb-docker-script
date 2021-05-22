# Project Title

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)

## About <a name = "about"></a>

Script to generate a mongodb server and a mongo express server in Docker Containers with config from .env file

## Getting Started <a name = "getting_started"></a>
1. Install Docker
2. Configure your database in .env file
3. Execute start_mongodb.sh
4. mongodb and mongo express starts with your configuration

### Prerequisites

Install Docker

```
https://docs.docker.com/engine/install/
```

### Installing
Configure your Database in the **.env** file.

Set **name** for your **database**
```
DB_NAME= <yourDbName>
```
Set **user name** for your database
```
DB_USER= <yourDbUserName>
```
Set **user password** for your database
```
DB_USER_PASSWORD= <yourDbUserPassword>
```
Set **root user name** for your server
```
DB_ROOT_USER= <yourDbRootUser>
```
Set **user password** for your server
```
DB_ROOT_PASSWORD= <yourDbRootUserPassword>
```
Set **local port** for your **mongodb** server
```
MONGODB_SERVER_PORT= <yourMongodbPort>
```
Set local port for your **mongo express** server
```
MONGODB_EXPRESS_SERVER_PORT= <yourMongoExpressPort>
```
Set **local** relative **directory** to save the databse data
```
LOCAL_DATA_STORAGE= <yourlocalDirectory>
```
Example example.env:<br>
DB_NAME=example <br>
DB_USER=exampleUser <br>
DB_USER_PASSWORD=exampleUserPassword<br>
DB_ROOT_USER=exampleRootUser<br>
DB_ROOT_PASSWORD=exampleRootUserPassword<br>
MONGODB_SERVER_PORT=8080<br>
MONGODB_EXPRESS_SERVER_PORT=8081<br>
LOCAL_DATA_STORAGE=exampleData<br>

Execute Bash script to start the installation
```
./start_mongodb.sh
```


Confirm Reset of the database with "y"
```
Do You want to reset the Database? y
```
Your database starts with your config. 
## Usage <a name = "usage"></a>
To stopp the database you can use ctrl+c.<br> 
To start the database you can execute the shell script another time and reject the reset or use docker-compose up.<br>
To reset the database you can execute the start_mongodb.sh and accept the reset.<br>
 :heavy_exclamation_mark: It will remove the hole data from the Database

