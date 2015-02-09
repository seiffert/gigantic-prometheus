#!/bin/bash

exec /prometheus \
        -config.file=/pyrphoros.conf \
        -logtostderr=true \
        -alertmanager.url=http://siren.gigantic.io \
        -storage.local.path=/metrics
