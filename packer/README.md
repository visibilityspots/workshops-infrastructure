# packer

build packer based images on digital ocean so they can be used to spin up droplets afterwards for example using terraform

## initialization

the file config.json needs to be configured with

do_api_token: your digital ocean API token
do_ssh_key: your SSH key id used within digital ocean

## nomad

build a nomad image which will install docker nomad and consul and create user based on users dir which can be used to give a nomad workshop

$ make nomad
