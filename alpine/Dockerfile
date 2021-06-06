FROM python:3.8-alpine

WORKDIR /usr/app

ENV SERVERLESS_ACCESS_KEY=x

RUN apk update && \
    apk add nodejs npm

RUN pip install -U pip && \
    npm install -g --silent serverless serverless-offline

COPY ./alpine/serverless.sh /serverless.sh
RUN chmod +x /serverless.sh

ENTRYPOINT ["/bin/sh", "/serverless.sh"]