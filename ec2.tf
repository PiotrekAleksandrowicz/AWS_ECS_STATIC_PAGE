
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "ec2_server"

  instance_type          = "t2.micro"
  key_name               = "ecs-project"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]

  user_data = <<-EOL
  #!/bin/bash -xe

  sudo yum update -y
  sudo curl -fsSL https://get.docker.com -o get-docker.sh
  sudo amazon-linux-extras install docker
  sudo yum install -y docker
  sudo service docker start
  sudo usermod -a -G docker ec2-user
  EOL

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}