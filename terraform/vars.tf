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

variable "PUB_KEY" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCHFXlATI6c26UN/IZSV6XuvQ+ADvLevXlmGgoNb3OBhld6ZP1G7KfUjgJmKjy+Icws4hgX8kwcZu/ERRy9IYOFvqXXt3p0QTX/VJGGzgs8dr2lBOAthy2iQcwkxpWbrRVzZu8i17aN8GXOvz8BVT0xDvMW5suP5humuQ+DlXJIDwoSjhU5t1+vkvFhaZKwHfbj7kykpay168oMIBOoj0zgs53MzNnR3llNWPIZHGTPSS4gW2xWWdGCFU1AwlrtVDE/35Vs+OOE3pe/h0IIHCZk0tmGc64o5xxXMZEfInlxH1E+qaWntl3Ao9Z3qUMkzFNvZRqY+zatD1kRCST/glY7"
}



# AWS CLI named profile used for authentication
variable "provider_profile" {
  description = "provider_profile"
  type        = string
  default     = "default"
  # default     = "default"
}