#!/bin/sh
sleep 10
set -e

if [ -z "$UID" ] ; then
  UID=0
fi

PYTHONPATH=/kolekti/src/kolekti_server:/kolekti/src celery worker -A kolekti_server.celeryconf -Q default -n default@${UID} --uid ${UID}  --loglevel=INFO 
