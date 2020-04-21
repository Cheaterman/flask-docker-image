FROM cheaterman/uwsgi

RUN su uwsgi -c "pip3 install --no-cache-dir flask"

ADD run.py /run.py
