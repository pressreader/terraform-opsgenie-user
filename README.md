# OpsGenie User Terraform module

Terraform module which creates User in OpsGenie

## Usage

```terraform
module "user" {
  source = "git::https://github.com/pressreader/terraform-opsgenie-user.git?ref=v1.0.0"

  username  = "username"
  full_name = "full name"
  role      = "role"

  locale         = "en_US"          # Defaults to en_US
  tags           = ["dev"]          # Defaults to []
  skype_username = "skype username" # Default to null

  # Defaults to {}
  user_details = {
    key = "value"
  }

  # Defaults to {}
  user_address = {
    country = "Country"
    state   = "State"
    city    = "City"
    line    = "Line"
    zipcode = "998877"
  }
}
```