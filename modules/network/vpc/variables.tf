variable "name" {
  description = "vpc name"
  default     = "main"
}

variable "cidr" {
  description = "cidr to use on the new vpc"
  default     = "10.255.0.0/16"
}

variable "tenancy" {
  description = "Tenancy of instances spin up within VPC"
  default = "default"
  
}

variable "dns_support" {
  description = "Whether or not the VPC has DNS support"
  default = true 
  
}

variable "dns_hostnames" {
  default = true
  description = " Whether or not the VPC has DNS hostname support"
  
}

variable "environment" {
  description = "Name of environment, used for tagging resources"
  default = "develop"
  
}
