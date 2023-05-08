data "digitalocean_ssh_key" "ssh_key" {
  name = "Jan Collijs"
}

resource "digitalocean_droplet" "nomad-workshop" {
  count      = var.droplets_amount
  image      = var.image_id
  name       = "${var.org_name}-nomad${count.index}"
  region     = "fra1"
  size       = "s-2vcpu-4gb"
  monitoring = false
  ipv6       = false
  ssh_keys   = [
    data.digitalocean_ssh_key.ssh_key.id
  ]
  user_data  = file("cloud_config.yaml")
  tags       = ["nomad-workshop"]
}
