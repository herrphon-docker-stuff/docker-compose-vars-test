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

ARG buildvar
ARG gitsha

RUN echo "Build var: $buildvar"  > build_env.txt
RUN echo "git sha1: $gitsha"    >> build_env.txt

ADD run.sh /
CMD "/run.sh"

