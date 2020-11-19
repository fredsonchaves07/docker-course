#!/bin/bash
set -e

if [ "$ENV" = "DEV" ]; then
    echo "Iniciando em modo de desenvolvimento"
    exec python "identidock.py"
else
    echo "Iniciando em modo de produção"
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py --callable app --stats 0.0.0.0:9191
fi