packer {
  required_plugins {
    digitalocean = {
      version = "= 1.1.1"
      source  = "github.com/hashicorp/digitalocean"
    }
  }
}

source "digitalocean" "bootcamp-workshop" {
  image               = "almalinux-9-x64"
  region              = "FRA1"
  size                = "s-2vcpu-2gb"
  ssh_username        = "root"
  snapshot_name       = "bootcamp-workshop"
  droplet_name        = "packer-bootcamp-workshop"
  private_networking  = "true"
}

build {
  sources = ["source.digitalocean.bootcamp-workshop"]
  provisioner "shell" {
    scripts = [
      "common/os-tools.sh",
      "software/docker.sh",
      "software/k8s.sh",
      "software/k3d.sh"
    ]
  }
}
