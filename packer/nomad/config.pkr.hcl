packer {
  required_plugins {
    digitalocean = {
      version = "= 1.1.1"
      source  = "github.com/hashicorp/digitalocean"
    }
  }
}

source "digitalocean" "nomad-workshop" {
  image               = "almalinux-8-x64"
  region              = "FRA1"
  size                = "s-2vcpu-2gb"
  ssh_username        = "root"
  snapshot_name       = "nomad-workshop"
  droplet_name        = "packer-nomad-workshop"
  private_networking  = "true"
}

build {
  sources = ["source.digitalocean.nomad-workshop"]
  provisioner "shell" {
    scripts = [
      "common/os-tools.sh",
      "nomad/install-docker.sh",
      "nomad/install-nomad.sh"
    ]
  }
}
