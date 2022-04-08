variable "tag_env" {
    description = "the value for env tag"
    type = string
    default = "Dev"
}

variable "region" {
    description = "the value for region"
    type = string
    
}

variable "access_key" {
    description = "the value for access_key"
    type = string
    
}

variable "secret_key" {
    description = "the value for secret_key"
    type = string
    
}

variable "elb_name" {
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}
variable "protocol" {
  type = string
}

variable "instance_port" {
  type = number
}
variable "lb_port" {
  type = number
}

variable "unhealthy_threshold" {
  type = number
}

variable "healthy_threshold" {
  type = number
}
variable "interval" {
  type = number
}

