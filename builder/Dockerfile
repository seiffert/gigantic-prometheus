FROM golang:1.4

MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

RUN apt-get -qy update && \
    apt-get -qy install vim-common make gcc mercurial && \
    go get github.com/tools/godep

WORKDIR /opt/workspace
ENV PWD /opt/workspace

ENTRYPOINT ["/usr/bin/make"]
CMD ["build"]
