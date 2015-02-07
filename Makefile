PROJECT=monitor-a

.PHONY=all get-deps build push

BUILDDIR=$(PWD)/.build
SRCDIR=$(BUILDDIR)/prometheus

all: clean .build build

.build:
		mkdir -p $(BUILDDIR)/bin

clean:
		rm -rf $(BUILDDIR)

build-builder:
		cd builder && docker build -t pseiffert/prometheus-builder .

build: build-builder 
		git clone git@github.com:prometheus/prometheus.git $(SRCDIR)
		docker run --rm -it -v $(SRCDIR):/opt/workspace pseiffert/prometheus-builder 
		cp $(SRCDIR)/prometheus pyrphoros/
		cp $(SRCDIR)/prometheus desmotes/
