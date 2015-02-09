PROJECT=monitor-a

.PHONY=all get-deps build push

BUILDDIR=$(PWD)/.build
PROMETHEUS_SRC=$(BUILDDIR)/prometheus
ALERTMANAGER_SRC=$(BUILDDIR)/alertmanager
PUSHGATEWAY_SRC=$(BUILDDIR)/pushgateway

all: clean .build build

.build:
	mkdir -p $(BUILDDIR)/bin

clean:
	rm -rf $(BUILDDIR)

build-builder:
	cd builder && docker build -t pseiffert/prometheus-builder .

build-prometheus: build-builder
	git clone git@github.com:prometheus/prometheus.git $(PROMETHEUS_SRC)
	docker run --rm -it -v $(PROMETHEUS_SRC):/opt/workspace pseiffert/prometheus-builder 

build-alertmanager: build-builder
	git clone git@github.com:prometheus/alertmanager.git $(ALERTMANAGER_SRC)
	docker run --rm -it -v $(ALERTMANAGER_SRC):/opt/workspace pseiffert/prometheus-builder alertmanager

build-pushgateway: build-builder
	git clone git@github.com:prometheus/pushgateway.git $(PUSHGATEWAY_SRC)
	docker run --rm -it -v $(PUSHGATEWAY_SRC):/opt/workspace pseiffert/prometheus-builder

copy-pyrphoros:
	cp $(PROMETHEUS_SRC)/prometheus pyrphoros/

copy-desmotes:
	cp $(PROMETHEUS_SRC)/prometheus desmotes/

copy-kratos:
	cp $(PUSHGATEWAY_SRC)/bin/pushgateway kratos/

copy-siren:
	cp $(ALERTMANAGER_SRC)/alertmanager siren/

build-images:
	cd desmotes && make clean && make build && make push
	cd pyrphoros && make clean && make build && make push
	cd siren && make clean && make build && make push
	cd kratos && make clean && make build && make push

build: build-prometheus build-alertmanager build-pushgateway copy-pyrphoros copy-desmotes copy-siren copy-kratos build-images

run: 
	swarm delete -y monitor
	swarm up
