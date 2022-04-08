data "aws_vpc" "Demo_existing_vpc" {
  id = "vpc-0130f7ed06724f15a"
}

data "aws_subnet" "Demo_existing_subnet" {
  id = "subnet-041dc9a9594a679ab"
}

resource "aws_network_interface" "Demo_interface" {
    subnet_id = data.aws_subnet.Demo_existing_subnet.id
    private_ips = ["10.0.8.100"]
    tags = {
        Name = "Demo_network_interface"
    }
}

resource "aws_instance" "Demo_v1" {
    ami = data.aws_ami.example.id
    instance_type = "t2.micro"
    network_interface {
        network_interface_id = aws_network_interface.Demo_interface.id
        device_index = 0
    }
    tags = {
     Name = "Demo_VM_test"
    }
    user_data = file ("./app1-install.sh")
    key_name = "terraform-training"
    
}