# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ecr-repo"
resource "aws_ecr_repository" "service" {
  force_delete         = null
  image_tag_mutability = "MUTABLE"
  name                 = "ecr-repo"
  tags                 = {}
  tags_all             = {}
  encryption_configuration {
    encryption_type = "AES256"
    kms_key         = null
  }
  image_scanning_configuration {
    scan_on_push = false
  }
}
