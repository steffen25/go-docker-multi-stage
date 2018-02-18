#!/bin/bash
echo 'APP_ENV = '$APP_ENV
cp "config/"$APP_ENV"/.env" .
if [ "$APP_ENV" == "production" ]; then
app
else
fresh
fi