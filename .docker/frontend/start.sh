#!/bin/sh

cd /application

npm install -g create-react-app

npm install
npm run build

/usr/bin/supervisord -n
