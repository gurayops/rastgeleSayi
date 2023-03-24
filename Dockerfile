FROM python:2

ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000

CMD gunicorn -b 0.0.0.0:8000 rastgele:api

