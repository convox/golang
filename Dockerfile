FROM ubuntu:16.04

# system dependencies
RUN apt-get update && apt-get -y install bzr build-essential curl git mercurial pkg-config

# go 1.7
ENV GOVERSION 1.7.4
RUN curl https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz -O
RUN tar -C /usr/local -xzf go${GOVERSION}.linux-amd64.tar.gz
ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin:/usr/local/go/bin:/go/src/github.com/convox/release/bin

# rerun
RUN go get github.com/convox/rerun
CMD rerun -build ${APP}
