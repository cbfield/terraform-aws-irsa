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

variable "description" {
  description = "A description for the role"
  type        = string
  default     = null
}

variable "force_detach_policies" {
  description = "Whether to forcibly detach all policies from the role before deletion"
  type        = bool
  default     = null
}

variable "inline_policies" {
  description = "Inline policies to attach to the role"
  type = list(object({
    name   = string
    policy = string
  }))
  default = []
}

variable "managed_policy_arns" {
  description = "ARNs of AWS managed policies to attach to this role"
  type        = list(string)
  default     = []
}

variable "max_session_duration" {
  description = "Maximum duration of sessions for this role, in seconds"
  type        = number
  default     = null
}

variable "name" {
  description = "The name of the Kubernetes service account"
  type        = string
}

variable "namespace" {
  description = "The name of the Kubernetes namespace containing the Kubernetes service account"
  type        = string
}

variable "permissions_boundary" {
  description = "The ARN of a policy to use as a permissions boundary for this role"
  type        = string
  default     = null
}

variable "policy_attachments" {
  description = "Attachments between this role and policies created elsewhere"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to assign to the role"
  type        = map(string)
  default     = {}
}
