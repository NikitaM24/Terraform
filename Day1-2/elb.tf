resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az
  listener {
    instance_port     = var.instance_port
    instance_protocol = var.protocol
    lb_port           = var.lb_port
    lb_protocol       = var.protocol
  }
  health_check {
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.healthy_threshold
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = var.interval
  }
  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout
  tags = {
    Name = "Demo-terraform-elb"
  }
}