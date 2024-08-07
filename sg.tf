#EC2 SG
resource "aws_security_group" "ec2_allow_http_ssh" {
  name        = "ec2_sg"
  description = "Allow http inbound traffic and all outbound traffic"
}

resource "aws_vpc_security_group_ingress_rule" "ec2_allow_tls_ipv4" {
  security_group_id = aws_security_group.ec2_allow_http_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "ec2_allow_ssh" {
  security_group_id = aws_security_group.ec2_allow_http_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "ec2_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ec2_allow_http_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# ALB SG
resource "aws_security_group" "lb_allow_http_ssh" {
  name        = "lb_sg"
  description = "Allow http inbound traffic and all outbound traffic"
}

resource "aws_vpc_security_group_ingress_rule" "lb_allow_tls_ipv4" {
  security_group_id = aws_security_group.lb_allow_http_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "lb_allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.lb_allow_http_ssh.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}