FROM cheaterman/uwsgi

RUN su uwsgi -c "pip install --no-cache-dir flask"

ADD run.py /run.py
