# Input variable definitions

variable "application_name" {
  description = "Application name"
  type        = string
}

variable "environment" {
  description = "Application environment"
  type        = string
}

variable "owner_team" {
  description = "Owener Application team"
  type        = string
}

variable "lambda_authorizer_invoke_arn" {
  description = "Lambda Authorizer Invoke ARN"
  type        = string
}

variable "lambda_authorizer_name" {
  description = "Lambda Authorizer Name"
  type        = string
}

variable "lambda_login_invoke_arn" {
  description = "Lambda Login Invoke ARN"
  type        = string
}

variable "lambda_login_name" {
  description = "Lambda Login Name"
  type        = string
}

variable "vpc_security_group_eks_ids" {
  description = "EKS Security Group for internal communication"
  type        = list(string)
}

variable "eks_private_subnet_ids" {
  description = "EKS Private Subnet IDs for internal communication"
  type        = list(string)
}