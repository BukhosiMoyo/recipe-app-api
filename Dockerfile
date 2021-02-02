FROM python:3.8-alpine
MAINTAINER Bukhosi Moyo

ENV PYTHONUNBUFFERED 1

COPY ./requiments.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user


