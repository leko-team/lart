#!/bin/sh
#https://laravel.build/example-app

echo Building docker images

cd docker
docker-compose build -q php
docker-compose build -q composer

docker-compose run --rm --no-deps composer create-project --remove-vcs --no-interaction laravel/laravel /app
