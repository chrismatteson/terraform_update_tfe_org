#!/bin/bash

generate_payload()
{
  cat <<EOF
{
  "data": {
    "type": "organizations",
    "attributes": {
      "name": "$orgname",
      "email": "$orgemail"
    }
  }
}
EOF
}

echo -n "Input TFE token:"
read token
echo -n "Input existing org name:"
read name
echo -n "Input new org name:"
read orgname
echo -n "Input new org email:"
read orgemail

curl  --header "Authorization: Bearer $token"  --header "Content-Type: application/vnd.api+json"  --request PATCH  --data "$(generate_payload)"  https://app.terraform.io/api/v2/organizations/$name
