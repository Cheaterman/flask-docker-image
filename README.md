Flask docker image
==================

A variant of [my uWSGI docker image](https://github.com/Cheaterman/uwsgi-docker-image) with some extra features for Flask:
- Automatically sets `FLASK_APP` environment variable to the value of `WSGI_MODULE` when using bash entry point.
- Add "shell" entry point, which drops the user into a Flask shell - a REPL with your application module pre-imported. Simply run `docker run -ti cheaterman/flask shell` to use it.

Both are particularly useful features to run maintenance scripts in general, such as for handling DB migrations.

See also: [Docker Hub repository](https://hub.docker.com/r/cheaterman/flask/)
