PROJECT = $(shell basename $$(pwd))
ID = pikesley/${PROJECT}

build:
	docker build --tag ${ID} .

run:
	docker run \
		--name ${PROJECT} \
		--volume $(shell pwd):/opt/${PROJECT} \
		--publish 8080:8080 \
		--interactive \
		--tty \
		--rm \
		${ID} bash

connect:
	docker exec \
		--interactive \
		--tty \
		${PROJECT} bash
