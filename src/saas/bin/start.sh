#!/bin/bash

gunicorn wsgi -w 8 --threads 2 --max-requests 1024 --max-requests-jitter 50 --worker-class gevent -b :8000 --access-logfile - --error-logfile - --access-logformat '[%(h)s] %({request_id}i)s %(u)s %(t)s "%(r)s" %(s)s %(D)s %(b)s "%(f)s" "%(a)s"'
