#!/bin/sh

echo "Running migrations..."
python django_docker/manage.py migrate

echo "Starting server..."
python django_docker/manage.py runserver 0.0.0.0:8000