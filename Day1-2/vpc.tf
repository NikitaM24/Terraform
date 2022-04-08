resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags  = {
      env = var.tag_env
      Name = "Demo_VPC"
  }
  provider = aws.us_west
}

resource "aws_subnet" "for_each_subnet" {
  vpc_id     = aws_vpc.main.id
  availability_zone = each.value[0]
  cidr_block = each.value[1]
  for_each = {
      public_subnet_demo = ["us-west-1a","10.0.7.0/24"]
      private_subnet_demo = ["us-west-1c","10.0.8.0/24"]
     #database_subnet_demo = ["us-east-2c","192.0.9.0/24"]
  }

  tags = {
    Name = each.key
    env = var.tag_env
  }
  provider = aws.us_west
}

/* resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.0.1.0/24"

  tags = {
    Name = "Public_Demo_Subnet"
    env = var.tag_env
  }
}


output "private_subnet" {
    description = "the private subnet of VPC"
    value = aws_subnet.private.id
}

output "public_subnet" {
    description = "the public subnet of VPC"
    value = aws_subnet.public.id
} */