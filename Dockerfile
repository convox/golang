FROM ubuntu:16.04

RUN apt-get update && apt-get -yy install bzr build-essential git golang mercurial pkg-config

ENV GOPATH /go
