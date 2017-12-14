SHELL := /bin/bash -e

ifneq ($(wildcard .env),)
	include .env
	export $(shell sed 's/=.*//' .env)
endif

.DEFAULT_GOAL := help
TARGETS = golang/.built

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Building CMDs
targets: $(TARGETS) ## Builds all Go binaries, with OS configured for Prod (Linux)

$(TARGETS):
	@docker build -t madglory/cci-golang-$$(dirname $@) $$(dirname $@) && \
	docker push madglory/cci-golang-$$(dirname $@):latest && \
	touch $@;

clean: ## Removes the .built mutex so we can recreate the files
	@rm -f $(TARGETS)
