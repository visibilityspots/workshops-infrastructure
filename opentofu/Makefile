plan:
	docker run --rm -it --name opentofu -v $(shell pwd):/workspace -w /workspace ghcr.io/opentofu/opentofu:1.8.2 plan -var-file="project.tfvars"

apply:
	docker run --rm -it --name opentofu -v $(shell pwd):/workspace -w /workspace ghcr.io/opentofu/opentofu:1.8.2 apply -var-file="project.tfvars"

destroy:
	docker run --rm -it --name opentofu -v $(shell pwd):/workspace -w /workspace ghcr.io/opentofu/opentofu:1.8.2 destroy -var-file="project.tfvars"
