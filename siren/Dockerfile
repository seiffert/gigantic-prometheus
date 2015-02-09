FROM golang:1.4
MAINTAINER Paul Seiffert <paul.seiffert@jimdo.com>

ADD alertmanager /alertmanager
ADD alertmanager.conf /alertmanager.conf

ENTRYPOINT ["/alertmanager"]
CMD ["-configFile=/alertmanager.conf", "-logtostderr"]

