 resource "aws_instance" "ec2-machine" {
    ami = "ami-02db3909eab4026e1"
    instance_type = "t2.micro"
    tags = {
        Name = "New-Provisioner-Machine"
        env = "QA"
    }
    provisioner "local-exec" {
        
    }
} 