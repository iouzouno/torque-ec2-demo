# to get vars.tf file I have added copy it from the below; (make sure to replace the AMI and key pair))

variable "REGION" {
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1a"
}

variable "ZONE2" {
  default = "us-east-1b"
}

variable "ZONE3" {
  default = "us-east-1c"
}

variable "AMIS" {
  default = {
    us-east-1 = "ami-08982f1c5bf93d976"
  }
}

variable "USER" {
  default = "ubuntu"
}




# AWS CLI named profile used for authentication
variable "provider_profile" {
  description = "provider_profile"
  type        = string
  default     = "default"
  # default     = "default"
}