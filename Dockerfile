FROM python:3.10-slim

RUN apt-get clean \
    && apt-get -y update

RUN apt-get -y install python3-dev \
    && apt-get -y install build-essential
    
RUN mkdir /snailpass-landing
WORKDIR /snailpass-landing
COPY ./requirements.txt /snailpass-landing
RUN pip install -r requirements.txt

COPY . /snailpass-landing

RUN chmod +x scripts/start.sh

