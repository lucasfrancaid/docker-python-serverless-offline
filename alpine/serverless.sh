#!/bin/sh

if ! grep -q "serverless-offline" ./serverless.yml; then
echo "---> Adding plugin to serverless.yml"
echo "
# Delete this after use
plugins:
- serverless-offline" >> serverless.yml
fi

if [ -f "requirements.txt" ]; then
echo "---> Installing requirements"
pip install -r requirements.txt
fi

if [[ -z "${HTTP_PORT}" ]]; then
export HTTP_PORT=3000
fi

echo "---> Starting offline application"
serverless offline start --host 0.0.0.0 --httpPort $HTTP_PORT
