[![Docker Image CI](https://github.com/lucasfrancaid/docker-python-serverless-offline/actions/workflows/docker-image.yml/badge.svg?branch=master)](https://github.com/lucasfrancaid/docker-python-serverless-offline/actions/workflows/docker-image.yml)

# Docker Python Serverless Offline
An image to run your python offline

## Disclaimers
If you need a connection with a postgres database, use lucasfrancaid/python-serverless-offline:slim-buster.  
The serverless.yml is required to setup your offline app.

## Usage with Docker Compose
Create a docker-compose.yml in your directory and paste:
```yml
version: '3.8'

services:
  serverless:
    container_name: python_serverless
    image: lucasfrancaid/python-serverless-offline:alpine  # or slim-buster 
    ports:
      - '3000:3000'
    volumes:
      - .:/usr/app
```

*A requirements.txt file is required to install dependencies. If you not have dependencies, just ignore. But, if you have, add a requriments.txt in the same path of docker-compose.yml*

Run serverless-offline:
```bash
docker-compose up
```

## Environment variables
If you need access aws resources, you can add environment variables. Follow example: [docker-compose.yml](./docker-compose.yml)  
Available variables:
```yml
HTTP_PORT: 3001  # [OPTIONAL] Default is 3000. If you change http port, you should change your port routing in docker-compose.yml
SERVERLESS_ACCESS_KEY: <SERVERLESS_ACCESS_KEY>  # [OPTIONAL] Used to access resources of serverless framework
AWS_ACCESS_KEY_ID: <AWS_ACCESS_KEY_ID>  # [OPTIONAL] Is required if you need use aws resources, e.g.: DynamoDB
AWS_SECRET_ACCESS_KEY: <AWS_SECRET_ACCESS_KEY>  # [OPTIONAL] Is required if you need use aws resources, e.g.: DynamoDB
```

## Contribute
Help me to write a better image to python-serverless-offline
