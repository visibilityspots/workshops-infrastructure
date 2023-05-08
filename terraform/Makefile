plan:
	docker run --rm -it --name terraform -v $(shell pwd):/workspace -w /workspace hashicorp/terraform:latest plan -var-file="project.tfvars"

apply:
	docker run --rm -it --name terraform -v $(shell pwd):/workspace -w /workspace hashicorp/terraform:latest apply -var-file="project.tfvars"

destroy:
	docker run --rm -it --name terraform -v $(shell pwd):/workspace -w /workspace hashicorp/terraform:latest destroy -var-file="project.tfvars"
