variable "iam_path" {
  description = "A path to assign to the IAM resources created by this module"
  type        = string
  default     = null
}

variable "iam_prefix" {
  description = "A prefix to assign to the IAM resources created by this module"
  type        = string
  default     = null
}

variable "idp_arn" {
  description = "The ARN of the IAM identity provider to create this role for"
  type        = string
}

variable "idp_url" {
  description = "The URL of the identity provider to create this role for"
  type        = string
}

variable "name" {
  description = "The name of the Kubernetes service account"
  type        = string
}

variable "namespace" {
  description = "The name of the Kubernetes namespace containing the Kubernetes service account"
  type        = string
}
