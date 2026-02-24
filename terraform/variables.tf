variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "linuxnugget-ghost"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "ami_id" {
  description = "RHEL 9 AMI ID in us-east-1"
  type        = string
  default     = "ami-0d8d3b1122e36c000"
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "key_name" {
  description = "Existing EC2 key pair name in us-east-1 (you must create/import it first)"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "Your public IP in CIDR form, e.g. 1.2.3.4/32"
  type        = string
}

variable "root_volume_size_gb" {
  type    = number
  default = 30
}

variable "domain_name" {
  description = "Your apex domain"
  type        = string
  default     = "linuxnugget.com"
}

variable "create_route53_zone" {
  description = "Set true only if Route53 should create/manage the hosted zone for the domain"
  type        = bool
  default     = false
}

variable "route53_zone_id" {
  description = "If create_route53_zone=false, provide the existing hosted zone ID for linuxnugget.com"
  type        = string
  default     = ""
}
