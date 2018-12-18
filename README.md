# TFE Organization Name and Email Updater
This repository allows a user to update the name and email of an
organiation in Terraform Enterprise. The steps to do so are as follows:

1) Clone this repositiory and change into the directory
2) Run `terraform init`
3) Create a token from TFE under User Settings -> Tokens
4) Export token to variable with `export TF_VAR_token=<your token>`
5) Run `terraform import tfe_organization.org <current org name>`
6) Run `terraform plan` and provide new org name and email
7) Run `terraform apply` and provide new org name and email
