FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD prometheus /prometheus
ADD pyrphoros.conf /pyrphoros.conf
ADD rules.conf /rules.conf
ADD start.sh /start.sh

EXPOSE 9090
VOLUME /metrics

ENTRYPOINT ["/start.sh"]
