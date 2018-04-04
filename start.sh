#!/bin/bash
python /usr/src/app/manage.py collectstatic --noinput

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn mysite.wsgi \
    --bind 0.0.0.0:8000 \
    --workers 3