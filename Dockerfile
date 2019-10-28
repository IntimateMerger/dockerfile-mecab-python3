FROM python:3.6.9-stretch

LABEL maintainer "tomohisa itaya <tomohisa.itaya@intimatemerger.com>"

RUN apt-get update && \
    apt-get install -y mecab=0.996-3.1 \
                       libmecab-dev=0.996-3.1 \
                       swig=3.0.10-1.1 \
                       mecab-ipadic-utf8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install mecab-python3==0.996.2
