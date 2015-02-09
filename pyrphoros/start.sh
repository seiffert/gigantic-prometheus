#!/bin/bash

exec /prometheus \
        -config.file=/pyrphoros.conf \
        -logtostderr \
        -alertmanager.url=http://siren.gigantic.io
