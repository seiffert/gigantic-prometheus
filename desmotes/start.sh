#!/bin/bash

exec /prometheus \
        -config.file=/desmotes.conf \
        -logtostderr=true \
        -alertmanager.url=http://siren.gigantic.io \
        -storage.local.path=/metrics
