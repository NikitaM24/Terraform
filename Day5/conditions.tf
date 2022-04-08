
variable "tag_env" {}
variable "instance_type_micro"{}
variable "instance_type_small" {}

resource "aws_instance" "ec2" {
ami = "ami-0e472ba40eb589f49"
instance_type = var.tag_env == "Prod" ? var.instance_type_small : var.instance_type_micro
tags = {
    Name = "Demo_condition_machine_v2"
}

}