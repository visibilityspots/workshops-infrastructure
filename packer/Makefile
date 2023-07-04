packer-init:
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.9.1 init nomad/config.pkr.hcl

packer-validate: packer-init
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.9.1 validate nomad/config.pkr.hcl

packer-build: packer-init packer-validate
	docker run --rm -it --name packer -v $(shell pwd):/workspace -w /workspace -e PACKER_PLUGIN_PATH="/workspace/.packer.d/plugins/" hashicorp/packer:1.9.1 build nomad/config.pkr.hcl
