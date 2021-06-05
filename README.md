# Docker Python Serverless Offline
An image to run your python offline

## Disclaim
If you need a connection with a postgres database, use lucasfrancaid/python-serverless-offline:slim-buster

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

## Contribute
Help me to write a better image to python-serverless-offline
