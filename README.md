# workshop-infrasctructure

some code I wrote to create a few vm's at digital ocean to facilitate a workshop

## Packer
[packer](https://packer.io/) is used to generate an image at digital ocean which preinstalls the requirements and configuration needed to perform the tasks during the workshop. The image will be used to spin up the different vm's needed.

### Nomad
the nomad directory holds all the data needed to generate an image to facilitate a nomad workshop

## Terraform
[terraform](https://terraform.io/) is used to spin up the whole environment at once, it will take care of bootstrapping the different vm's based on the prebuild image as well as the creation of the necessary DNS records.
