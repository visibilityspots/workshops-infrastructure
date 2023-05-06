build:
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace hashicorp/packer:latest build -var-file config.json nomad/config.json
