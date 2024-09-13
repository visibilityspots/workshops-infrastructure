resource "digitalocean_project" "project" {
  name        = "${var.org_name}"
  description = "resources for a ${var.org_name} workshop linked to Jan"
  purpose     = "Class project / Educational purposes"
  resources   = flatten([digitalocean_droplet.workshop.*.urn, digitalocean_domain.workshop.urn])
}
