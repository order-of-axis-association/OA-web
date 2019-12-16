#!/usr/bin/bash
VENV_PY="/home/remi/development/OA_web/DEV/bin/python3"

export LD_LIBRARY_PATH=/usr/local/lib
${VENV_PY} manage.py runserver 0.0.0.0:80
