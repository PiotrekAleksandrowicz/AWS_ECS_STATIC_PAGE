# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "arn:aws:ecs:us-east-1:440224422004:task-definition/ecr-task-def:2"
resource "aws_ecs_task_definition" "ecr-task-def" {
  container_definitions = jsonencode([{
    cpu       = 0
    essential = true
    image     = "440224422004.dkr.ecr.us-east-1.amazonaws.com/ecr-repo"
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        awslogs-create-group  = "true"
        awslogs-group         = "/ecs/ecr-task-def"
        awslogs-region        = "us-east-1"
        awslogs-stream-prefix = "ecs"
      }
    }
    name = "ecs-container-1"
    portMappings = [{
      appProtocol   = "http"
      containerPort = 80
      hostPort      = 80
      name          = "ecs-container-1-80-tcp"
      protocol      = "tcp"
    }]
  }])
  cpu                      = jsonencode(1024)
  execution_role_arn       = "arn:aws:iam::440224422004:role/ECS-TASK-EXECUTION-ROLE"
  family                   = "ecr-task-def"
  ipc_mode                 = null
  memory                   = jsonencode(3072)
  network_mode             = "awsvpc"
  pid_mode                 = null
  requires_compatibilities = ["FARGATE"]
  skip_destroy             = null
  tags                     = {}
  tags_all                 = {}
  task_role_arn            = null
  track_latest             = false
  runtime_platform {
    cpu_architecture        = "X86_64"
    operating_system_family = "LINUX"
  }
}
