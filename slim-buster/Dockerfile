FROM python:3.8-slim-buster

WORKDIR /usr/app

ENV SERVERLESS_ACCESS_KEY=x

RUN apt-get update -y && \
    apt-get -y install nodejs npm

RUN pip install -U pip && \
    npm install -g --silent npm serverless serverless-offline

COPY ./slim-buster/serverless.sh /serverless.sh
RUN chmod +x /serverless.sh

ENTRYPOINT ["/bin/sh", "/serverless.sh"]