FROM cheaterman/uwsgi

RUN pip install flask

ADD run.sh /run.sh

CMD []
ENTRYPOINT ["/run.sh"]
