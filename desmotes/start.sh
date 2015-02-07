#!/bin/bash

env

exec /prometheus -config.file=/desmotes.conf -logtostderr
