#!/bin/bash

exec gunicorn -b 0.0.0.0:8080 --access-logfile - --error-logfile - main:APP