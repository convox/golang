# convox/golang

Convox base image for Go

## Usage

	FROM convox/golang
	
  # copy source code
	COPY . /go/src/github.com/me/myprog

  # compile the program
	RUN go install /go/src/github.com/me/myprog

	ENTRYPOINT ["/go/bin/myprog"]

## Expectations

The `GOPATH` is set to `/go/` by default.

## Exports

None

## Includes

### Base Image: [ubuntu:16.04](https://hub.docker.com/_/ubuntu/)

### Development Tools

* `build-essential`
* `golang`
* `pkg-config`

## SCM Tools (for `go get`)

* `bzr`
* `git`
* `mercurial`
