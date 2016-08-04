FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -yy install bzr build-essential git golang mercurial pkg-config

ENV GOPATH /go
