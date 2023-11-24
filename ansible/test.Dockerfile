FROM ubuntu:23.04

RUN apt update -y && apt install -y python3 nginx &&\
    mkdir /home/isucon
