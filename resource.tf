resource "aws_instance" "my_VM_demo" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.small"
}