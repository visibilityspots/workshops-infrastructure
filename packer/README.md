# packer

build packer based images on digital ocean so they can be used to spin up droplets afterwards for example using terraform

## configuration

there is a config.pkr.hcl file available in each directory to build a specific image.

### image

you need to define an image to start the droplet from

https://do-community.github.io/available-images/

### size

The size is important regarding the pricing. Using the doctl CLI (https://docs.digitalocean.com/reference/doctl/) you can fetch the available options;

$ doctl compute size list

### API token

a digital ocean API token is needed (https://docs.digitalocean.com/reference/api/create-personal-access-token/)

## nomad

build a nomad image which will preinstall docker nomad and consul on an AlmaLinux 8 vm and store a snapshot of it on your digital ocean account which can be used afterwards to spin up a lab environment.

$ make DIGITALOCEAN_TOKEN=YOUR_TOKEN packer-init

this will initialize the needed plugins and store them in a .packer.d directory on your local filesystem

$ make DIGITALOCEAN_TOKEN=YOUR_TOKEN packer-validate

validates the packer configuration

$ make DIGITALOCEAN_TOKEN=YOUR_TOKEN packer-build

start the process of building a snapshot on digital ocean based on the provisioning steps
