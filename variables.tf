variable "staging" {
  default = "f7_staging"
}

variable "prod" {
  default = "f7_prod"
}

variable "ec2_count" {
  type = "map"
  default {
    prod    = 2
    staging = 1
  }
}

variable "environment" {
  type    = "string"
  default = "staging"
}

variable "availability_zone" {
  default = "us-east-1"
}

variable "az_ami" {
  type = "map"
  default {
    "us-east-1" = "ami-035be7bafff33b6b6"
    "us-east-2" = "ami-0cd3dfa4e37921605"
    "us-west-1" = "ami-0799ad445b5727125"
    "us-west-2" = "ami-032509850cf9ee54e"
  }
}
    
