PROJECT=siren

.PHONY=all build run push

all: build push run

build:
	docker build -t registry.giantswarm.io/seiffert/$(PROJECT) .

clean:
	docker stop $(PROJECT) > /dev/null 2> /dev/null || echo "$(PROJECT) not running"
	docker rm $(PROJECT) > /dev/null 2> /dev/null || echo "$(PROJECT) does not exist"

run: clean
	docker run -d --name $(PROJECT) -p 9093:9090 registry.giantswarm.io/seiffert/$(PROJECT)

push:
	docker push registry.giantswarm.io/seiffert/$(PROJECT)
