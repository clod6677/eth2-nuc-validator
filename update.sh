#! /bin/bash
docker-compose stop -t 60
docker-compose down
docker system prune -a
docker-compose build
docker-compose up -d --force-recreate
docker-compose ps
