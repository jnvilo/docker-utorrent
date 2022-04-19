.PHONY: build
PROJECT=jnvilo
IMAGE_NAME=utorrent
TAG=0.0.1

.PHONY: build  all

all:  build tag

build:
	docker build --build-arg IMAGE_NAME=${IMAGE_NAME} -t "${IMAGE_NAME}:${TAG}" -f Dockerfile .

tag:
	docker tag "${IMAGE_NAME}:${TAG}" "${PROJECT}/${IMAGE_NAME}:${TAG}"

push:
	docker push "${PROJECT}/${IMAGE_NAME}:${TAG}"

run:

	docker run --rm -it "${IMAGE_NAME}:${TAG}"  /bin/bash

