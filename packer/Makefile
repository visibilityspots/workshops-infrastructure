packer-init:
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e DIGITALOCEAN_TOKEN=$(DIGITALOCEAN_TOKEN) -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.11.2 init config.pkr.hcl

packer-validate: packer-init
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e DIGITALOCEAN_TOKEN=$(DIGITALOCEAN_TOKEN) -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.11.2 validate config.pkr.hcl

packer-build: packer-init packer-validate
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e DIGITALOCEAN_TOKEN=$(DIGITALOCEAN_TOKEN) -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.11.2 build config.pkr.hcl
