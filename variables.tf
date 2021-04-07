variable "auto_create_subnetworks" {
  type        = bool
  default     = false
  description = "Wheter to create a subnet for each region automatically across the `10.128.0.0/9`."
}

variable "project" {
  type        = string
  default     = null
  description = "The ID of the project in which the resource belongs."
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "An optional description of this resource."
}

variable "routing_mode" {
  type        = string
  default     = "REGIONAL"
  description = "The network-wide routing mode to use. Possible values: `REGIONAL`, `GLOBAL`"

  validation {
    condition     = var.routing_mode == null ? true : contains(["REGIONAL", "GLOBAL"], var.routing_mode)
    error_message = "Allowed values: `free`, `pro`, `business`, `enterprise`."
  }
}

variable "mtu" {
  type        = number
  default     = 1460
  description = "Maximum Transmission Unit in bytes."

  validation {
    condition     = var.mtu == null ? true : (var.mtu >= 1460 && 1500 >= var.mtu)
    error_message = "Allowed range: `1460-1500`."
  }
}

variable "delete_default_routes_on_create" {
  type        = bool
  default     = false
  description = "If set to `true`, default routes `(0.0.0.0/0)` will be deleted immediately after network creation."
}
