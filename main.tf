resource "opsgenie_user" "main" {
  username       = var.username
  full_name      = var.full_name
  role           = var.role
  locale         = var.locale
  tags           = var.tags
  skype_username = var.skype_username
  user_details   = var.user_details

  dynamic "user_address" {
    for_each = var.user_address.enabled ? [1] : []
    content {
      country = var.user_address.country
      state   = var.user_address.state
      city    = var.user_address.city
      line    = var.user_address.line
      zipcode = var.user_address.zipcode
    }
  }

  lifecycle {
    ignore_changes = [
      timezone
    ]
  }
}