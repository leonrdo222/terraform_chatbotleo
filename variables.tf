###############################################
# Global
###############################################
variable "project_name" {
  type        = string
  description = "Project name prefix"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

###############################################
# Networking / VPC
###############################################
variable "vpc_cidr_block" { type = string }

variable "public_subnet_cidr" { type = string }
variable "public_subnet2_cidr" { type = string }
variable "private_subnet_cidr" { type = string }
variable "private_subnet2_cidr" { type = string }

variable "availability_zone_1" { type = string }
variable "availability_zone_2" { type = string }

###############################################
# Security
###############################################
variable "admin_cidr" {
  type        = string
  description = "CIDR allowed to SSH into EC2"
}

###############################################
# Application / DNS
###############################################
variable "domain_name" { type = string }
variable "hosted_zone_id" { type = string }

variable "app_port" {
  type        = number
  description = "Container listening port"
}

variable "health_check_path" {
  type        = string
  description = "ALB health check path"
}

###############################################
# EC2 / Autoscaling
###############################################
variable "instance_type" { type = string }
variable "ami_id" { type = string }

variable "min_size" { type = number }
variable "max_size" { type = number }
variable "desired_capacity" { type = number }

###############################################
# Model Artifacts
###############################################
variable "model_s3_uri" {
  type        = string
  description = "Optional S3 URI for pretrained model"
  default     = ""
}

variable "model_s3_arns" {
  type        = list(string)
  description = "S3 ARNs EC2 is allowed to read"
}
