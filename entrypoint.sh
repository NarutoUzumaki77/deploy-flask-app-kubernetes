#!/bin/bash

mkdir -p /deploy/logs
touch /deploy/logs/error.log
touch /deploy/logs/access.log
cd /deploy
exec gunicorn --bind 0.0.0.0:8080 -c docker-gunicorn.conf.py main:app