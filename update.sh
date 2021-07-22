#! /bin/bash
docker-compose down
docker system prune -a
docker-compose build
docker-compose up -d --force-recreate
docker-compose ps
