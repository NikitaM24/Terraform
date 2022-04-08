#ec2 machine resource block
 resource "aws_instance" "ec2" {
    ami = "ami-064ff912f78e3e561"
    instance_type = "t2.micro"
    availability_zone = each.value
    for_each = {
        first_vm = "us-east-2a"
        second_vm = "us-east-2b"
    }
    tags = {
        Name = each.key 
        env = var.tag_env

    }
    #count = 3
} 

/* resource "aws_iam_user" "lb" {
  name = "loadbalancer-$(count.index)"
  count = 4

  tags = {
    tag-key = "tag-value"
  }
} */
/* resource "aws_s3_bucket" "b" {
  bucket = "tf-user10-4april2022"

  tags = {
    Name        = "Demo bucket 1234"
    Environment = "Dev"
  } 
} */

/* output "public_ip" {
    description = "the public ip of ec2 machine"
    value = aws_instance.ec2.public_ip
}

output "public_dns" {
    description = "the public dns of ec2 machine"
    value = aws_instance.ec2.public_dns
} */

/* output "aws_s3_bucket" {
    description = "s3 bucket id"
    value = aws_s3_bucket.b.id
} */

