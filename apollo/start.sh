#!/bin/bash

export DATABASE_URL="mysql2://$MYSQL_USER:$MYSQL_PASSWORD@$DB_PORT_3306_TCP_ADDR/$MYSQL_DATABASE"

bundle exec rake db:migrate

exec $@
