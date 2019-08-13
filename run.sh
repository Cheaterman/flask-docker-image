#!/bin/bash

cd /code

pip install -U -r ${REQUIREMENTS_FILE:-requirements.txt}

export FLASK_APP=$WSGI_MODULE

if [[ "$1" == "bash" ]]
then
    bash
elif [[ "$1" == "shell" ]]
then
    flask shell
else
    uwsgi --virtualenv /env --chdir /code -w "${WSGI_MODULE:-wsgi:app}" --uwsgi-socket 0.0.0.0:5000
fi
