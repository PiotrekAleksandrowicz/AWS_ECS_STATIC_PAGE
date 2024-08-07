
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.name

  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.ec2_allow_http_ssh.id]
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  user_data = <<-EOL
  #!/bin/bash -xe

  sudo yum update -y
  sudo yum install wget unzip
  sudo curl -fsSL https://get.docker.com -o get-docker.sh
  sudo amazon-linux-extras install docker
  sudo yum install -y docker
  sudo service docker start
  sudo usermod -a -G docker ec2-user
  EOL

  tags = {
    Terraform   = var.tag_terraform
    Environment = var.tag_environment
  }
}

