.EXPORT_ALL_VARIABLES:
MD2CF_VERSION = $(shell curl -s "https://api.github.com/repos/iamjackg/md2cf/releases/latest" | jq -r .name)

.PHONY: build publish

build:
	docker buildx bake --load

publish:
	docker buildx bake --set *.platform=linux/arm64 --set *.platform=linux/amd64 --push
