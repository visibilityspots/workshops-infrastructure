# README.md

this directory holds all the code to deploy a workshop farm of vm's on digital ocean to be able to execute the exercices on a sandbox environment with some preinstalled tools.

## initialization

before deploy the different vm's one have to create an image using the packer code in this repository.

Once such an image is available there are 2 files you need to have a look at

project.tfvars

holds some important information to deploy the infrastructure

- api_token: the digital ocean API token to deploy the actual services
- image_id: the ID of the image build by packer
- droplets_amount: the amount of vm's needed to deploy
- org_name: the name of the organisation for which this workshop is intented. (will be used to name the droplets and DNS records)
- domain: the (sub)domain you've configured with the digital ocean nameservers

cloud_config.yaml

holds the information to generate a dedicted user which will be used by the participants of the workshop to access the vm through SSH

## terraform

a makefile has been provided to quickly spin up the needed environment

$ make plan

will execute a `terraform plan -var-file="project.tfvars"` inside a docker container

$ make apply

will execute a `terraform apply -var-file="project.tfvars"` inside a docker container

$ make destroy
will execute a `terraform destroy -var-file="project.tfvars"` inside a docker container
