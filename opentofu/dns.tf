resource "digitalocean_domain" "workshop" {
   name = var.domain
}

resource "digitalocean_record" "droplets_a" {
  count  = var.droplets_amount
  domain = "${digitalocean_domain.workshop.name}"
  type   = "A"
  name   = "${element(digitalocean_droplet.workshop.*.name, count.index)}"
  value  = "${element(digitalocean_droplet.workshop.*.ipv4_address, count.index)}"
}

resource "digitalocean_record" "droplets_wildcard" {
  count  = var.droplets_amount
  domain = "${digitalocean_domain.workshop.name}"
  type   = "A"
  name   = "*.${element(digitalocean_droplet.workshop.*.name, count.index)}"
  value  = "${element(digitalocean_droplet.workshop.*.ipv4_address, count.index)}"
}
