### BEGIN Ansible Block: Backend ###
terraform {
  backend "local" {
    path = "main.tfstate"
  }
}
### END Ansible Block: Backend ###

provider "aws" {
  region     = "${var.availability_zone}"
}

resource "aws_instance" "f7" {
  ami           = "${var.az_ami["${var.availability_zone}"]}"
  instance_type = "t2.micro"
  count         = "${var.ec2_count["${var.environment}"]}"

  tags = {
    Name = "f7_${var.environment}"
  }

}
