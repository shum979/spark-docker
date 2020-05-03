REPO=shum979
BASE_VERSION=0.1.0
NOCACHE=OFF

build:
	docker build \
	-t $(REPO)/recon-spark:$(BASE_VERSION) .
push: build
	docker push $(REPO)/recon-spark:$(BASE_VERSION)
all: push
