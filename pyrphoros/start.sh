#!/bin/bash

env

# : ${DESMOTES_PORT_9092_TCP_ADDR:?"Environment variable DESMOTES_PORT_9092_TCP_ADDR missing."}

/bin/sed -i "s@<DESMOTES-HOST>@${DESMOTES_PORT_9092_TCP_ADDR}:9092@" /pyrphoros.conf

exec /prometheus -config.file=/pyrphoros.conf -logtostderr
