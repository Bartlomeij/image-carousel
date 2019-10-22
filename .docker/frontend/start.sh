#!/bin/sh

cd /application

npm install
npm run build

/usr/bin/supervisord -n
