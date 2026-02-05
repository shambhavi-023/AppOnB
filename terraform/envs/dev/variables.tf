variable "server_url" {
  description = "Saviynt tenant url"
  type = string
}

variable "username" {
  description = "Saviynt tenant username"
  type = string
}

variable "password" {
  description = "Saviynt tenant password"
  type = string
}

variable "security_system_name" {
  default = "Securiyt_system"
  type = string
}

variable "endpoint_name" {
  default = "endpoint"
  type = string
}