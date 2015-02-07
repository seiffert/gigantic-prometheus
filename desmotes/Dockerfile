FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD prometheus /prometheus
ADD desmotes.conf /desmotes.conf
ADD start.sh /start.sh

EXPOSE 9090

ENTRYPOINT ["/start.sh"]
