variable "username" {
  description = "The email address associated with this user. Opsgenie defines that this must not be longer than 100 characters and must contain lowercase characters only."
  type        = string
}

variable "full_name" {
  description = "The Full Name of the User."
  type        = string
}

variable "role" {
  description = "The Role assigned to the User. Either a built-in such as 'Admin' or 'User' - or the name of a custom role."
  type        = string
}

variable "locale" {
  description = "Location information for the user. Please look at Supported Locale Ids (https://docs.opsgenie.com/docs/supported-locales) for available locales. Defaults to en_US."
  type        = string
  default     = "en_US"
}

variable "tags" {
  description = "A list of tags to be associated with the user."
  type        = list(string)
  default     = []
}

variable "skype_username" {
  description = "Skype username of the user. Defaults to null."
  type        = string
  default     = null
}

variable "user_details" {
  description = "Details about the user in form of key and list. of values."
  type        = map(any)
  default     = {}
}

variable "user_address" {
  description = "Address of the user."
  type        = object({
    enabled = optional(bool, true)
    country = optional(string)
    state   = optional(string)
    city    = optional(string)
    line    = optional(string)
    zipcode = optional(string)
  })
  default = {
    enabled = false
    country = ""
    state   = ""
    city    = ""
    line    = ""
    zipcode = ""
  }
}