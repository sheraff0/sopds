#!/bin/bash

python manage.py collectstatic --noinput
gunicorn sopds.wsgi:application -b 0.0.0.0:8000
