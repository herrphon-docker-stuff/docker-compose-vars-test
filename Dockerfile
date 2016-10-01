FROM ubuntu:latest

MAINTAINER alex

ENV TERM xterm

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update  \
 && apt-get -y upgrade  \
 && apt-get install -y -q --no-install-recommends \
    emacs vim \
 && apt-get clean \
 && rm -r /var/lib/apt/lists/*

ARG buildno

RUN echo "Build number: $buildno" > build_env.txt

ADD run.sh /
CMD "/run.sh"

