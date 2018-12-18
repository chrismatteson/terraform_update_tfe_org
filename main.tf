# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.token}"
}

# Create an organization
resource "tfe_organization" "org" {
  name  = "${var.orgname}"
  email = "${var.orgemail}"
}
