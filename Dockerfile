FROM python:2

ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

CMD gunicorn -b 0.0.0.0:80 rastgele:api

