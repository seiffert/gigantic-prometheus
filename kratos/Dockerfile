FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD pushgateway /pushgateway
ADD start.sh /start.sh

EXPOSE 9090

ENTRYPOINT ["/start.sh"]
