FROM       ubuntu:13.10
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>
ENV        RAILS_ENV production

RUN        apt-get update && apt-get install -yq \
           ruby2.0 ruby2.0-dev gcc make g++ libmysqlclient-dev
RUN        gem install bundler

WORKDIR    /promdash
ADD        . /promdash

RUN        cp config/database.yml.example config/database.yml && \
           bundle install --deployment --binstubs --without="development test migration" && \
           bundle exec rake assets:precompile

EXPOSE     3000

ENTRYPOINT [ "./start.sh" ]
CMD        [ "./bin/thin", "start" ]
