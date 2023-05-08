resource "digitalocean_project" "project" {
  name        = "Nomad workshop"
  description = "resources linked to a nomad workshop given by Jan"
  purpose     = "Class project / Educational purposes"
  resources   = flatten([digitalocean_droplet.nomad-workshop.*.urn, digitalocean_domain.workshop.urn])
}
