VERSION ?= local
PORTS= \
	-p 3000:3000
VOLUMES= -v /var/log/docker:var/log
REPO=perylemke
NAME=railsapi

.PHONY: build push shell run start stop rm release

build:
	docker build -t $(REPO)/$(NAME):$(VERSION) .

up:
	docker-compose up

down:
	docker-compose down

push:
	docker push $(REPO)/$(NAME):$(VERSION)

shell:
	docker run --rm --name $(NAME) $(PORTS) -i -t $(REPO)/$(NAME):$(VERSION) /bin/bash

run:
	docker run -it --rm --name $(NAME) $(PORTS) $(REPO)/$(NAME):$(VERSION)

start:
	docker run -d --name $(NAME) $(PORTS) $(REPO)/$(NAME):$(VERSION)

stop:
	docker stop $(NAME)

rm:
	docker rm $(NAME)

release: build
	make push -e VERSION=$(VERSION)

default: build
