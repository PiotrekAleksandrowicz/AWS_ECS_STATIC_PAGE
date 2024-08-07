resource "aws_ecr_repository" "service" {
  force_delete         = var.force_delete
  image_tag_mutability = var.image_tag_mutability
  name                 = var.ecr_name
  tags                 = {}
  tags_all             = {}
  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}
