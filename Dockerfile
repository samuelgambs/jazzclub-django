FROM python:3.5-onbuild

ENV DJANGO_CONFIGURATION Docker

CMD ["gunicorn", "-c", "gunicorn_conf.py", "--chdir", "src", "mysite.wsgi:application", "--reload"]
