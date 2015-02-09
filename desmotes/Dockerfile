FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD prometheus /prometheus
ADD desmotes.conf /desmotes.conf
ADD rules.conf /rules.conf
ADD start.sh /start.sh

VOLUME /metrics
EXPOSE 9090

ENTRYPOINT ["/start.sh"]
