FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD prometheus /prometheus
ADD pyrphoros.conf /pyrphoros.conf
ADD start.sh /start.sh

EXPOSE 9090

ENTRYPOINT ["/start.sh"]
