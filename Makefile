.PHONY: *

run_attached: _init_submodules
	docker-compose up --build

_init_submodules:
	$(info "fetching submodules")
	git submodule update --init --remote --recursive
