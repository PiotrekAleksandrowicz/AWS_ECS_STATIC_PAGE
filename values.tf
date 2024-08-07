# EC2
# variable "source" {
#     default = "terraform-aws-modules/ec2-instance/aws"
#     type = string
# }

variable "name" {
    default = "ec2_server"
    type = string
}

variable "instance_type"{
    default = "t2.micro"
    type = string
}

variable "key_name" {
    default = "ecs-project"
    type = string
}

variable "tag_terraform" {
    default = "true"
    type = string
}

variable "tag_environment" {
    default = "prod"
    type = string
}

#ECR REPOSITORY
variable "force_delete" {
    default = null
}

variable "image_tag_mutability" {
    default = "MUTABLE"
    type = string
}

variable "ecr_name" {
    default = "ecr-repo"
    type = string
}

variable "encryption_type" {
    default = "AES256"
    type = string
}

variable "kms_key" {
    default = null
}

variable "scan_on_push" {
    default = false
}

#lb
variable "client_keep_alive" {
    default = 3600
}

variable "customer_owned_ipv4_pool" {
    default = null
}

variable "desync_mitigation_mode" {
  default = "defensive"
}

variable "dns_record_client_routing_policy" {
  default = null
}

variable "drop_invalid_header_field" {
  default = false
}

variable "enable_cross_zone_load_balancing" {
  default = true
}

variable "enable_deletion_protection" {
  default = false
}

variable "enable_http2" {
  default = true
}

variable "enable_tls_version_and_cipher_suite_headers" {
  default = false
}

variable "enable_waf_fail_open" {
  default = false
}

variable "enable_xff_client_port" {
   default =  false
}

variable "enforce_security_group_inbound_rules_on_private_link_traffi" {
  default = null
}

variable "idle_timeout" {
  default = 60
}

variable "internal" {
  default = false
}

variable "ip_address_type" {
  default = "ipv4"
}

variable "load_balancer_type" {
  default = "application"
}

variable "lb_name" {
  default = "project-alb"
}

variable "name_prefix" {
  default = null
}

variable "preserve_host_header" {
  default = false
}

variable "subnets" {
  default = ["subnet-039a4339b01e1e59b", 	"subnet-0ea65a4ec33bc012e", "subnet-0de5c1471e1cb1f98"]
}

variable "xff_header_processing_mode" {
  default = "append"
}