#!/bin/bash

# build service
cd server
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o server -ldflags '-w -s' .

cd ..

# build web
cd web
yarn install
yarn run build

cd ..

# docker
docker build -t test-web .