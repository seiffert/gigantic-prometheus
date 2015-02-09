#!/bin/bash

exec /prometheus \
        -config.file=/desmotes.conf \
        -logtostderr \
        -alertmanager.url=http://siren.gigantic.io
