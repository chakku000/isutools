FROM ubuntu:23.04

RUN apt update -y && apt install -y python3 &&\
    mkdir /home/isucon
