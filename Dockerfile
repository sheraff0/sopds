FROM python:3.10-slim

RUN apt update && apt install -y git

COPY ./requirements.txt .
RUN pip install -r requirements.txt

ADD . /app

WORKDIR /app