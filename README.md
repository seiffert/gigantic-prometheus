# Gigantic Prometheus

Running two [prometheus](http://prometheus.io/) instances that monitor each other on [Giant Swarm](https://giantswarm.io/).
Additionally, there is an Alertmanager instance used by both prometheus processes to publish alarms. The alertmanager 
is available at [http://siren.gigantic.io](http://siren.gigantic.io).

If you need to push metrics to prometheus, you can use the Pushgateway [kratos](http://en.wikipedia.org/wiki/Kratos) 
hosted at [http://kratos.gigantic.io](http://kratos.gigantic.io).

Fancy dashboards can be created using Promdash / [apollo](http://apollo.gigantic.io/test).

Access [Desmotes](http://en.wikipedia.org/wiki/Prometheus) and [Pyrphoros](http://en.wikipedia.org/wiki/Prometheus) via HTTP:

* [http://desmotes.gigantic.io/](http://desmotes.gigantic.io/)
* [http://pyrphoros.gigantic.io/](http://pyrphoros.gigantic.io/)
* [http://siren.gigantic.io/](http://siren.gigantic.io/)
* [http://kratos.gigantic.io/](http://kratos.gigantic.io/)
* Number of http requests in the last 5 minutes on Desmotes ([link](http://pyrphoros.gigantic.io/graph#%5B%7B%22expr%22%3A%22delta(http_requests_total%5B5m%5D)%22%2C%22range_input%22%3A%221h%22%2C%22end_input%22%3A%22%22%2C%22step_input%22%3A%22%22%2C%22stacked%22%3A%22%22%2C%22tab%22%3A0%7D%5D))
* Number of http requests in the last 5 minutes on Pyrphoros ([link](http://desmotes.gigantic.io/graph#%5B%7B%22expr%22%3A%22delta(http_requests_total%5B5m%5D)%22%2C%22range_input%22%3A%221h%22%2C%22end_input%22%3A%22%22%2C%22step_input%22%3A%22%22%2C%22stacked%22%3A%22%22%2C%22tab%22%3A0%7D%5D))

## Development Notes

Build prometheus from source: 

    make

Build desmotes/pyrphoros docker image:

    make build-images

Run 

    make run
