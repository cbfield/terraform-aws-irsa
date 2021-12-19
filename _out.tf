output "iam_path" {
  description = "The value provided in var.iam_path"
  value       = var.iam_path
}

output "iam_prefix" {
  description = "The value provided in var.iam_prefix"
  value       = var.iam_prefix
}

output "idp_arn" {
  description = "The value provided in var.idp_arn"
  value       = var.idp_arn
}

output "idp_url" {
  description = "The value provided in var.idp_url"
  value       = var.idp_url
}

output "description" {
  description = "The value provided in var.description"
  value       = var.description
}

output "force_detach_policies" {
  description = "The value provided in var.force_detach_policies"
  value       = var.force_detach_policies
}

output "inline_policies" {
  description = "The value provided in var.inline_policies"
  value       = var.inline_policies
}

output "managed_policy_arns" {
  description = "The value provided in var.managed_policy_arns"
  value       = var.managed_policy_arns
}

output "max_session_duration" {
  description = "The value provided in var.max_session_duration"
  value       = var.max_session_duration
}

output "name" {
  description = "The value provided in var.name"
  value       = var.name
}

output "namespace" {
  description = "The value provided in var.namespace"
  value       = var.namespace
}

output "permissions_boundary" {
  description = "The value provided in var.permissions_boundary"
  value       = var.permissions_boundary
}

output "policy_attachments" {
  description = "The value provided in var.policy_attachments"
  value       = var.policy_attachments
}

output "role" {
  description = "The IAM role created by this module"
  value       = aws_iam_role.role
}

output "tags" {
  description = "The value provided in var.tags"
  value       = var.tags
}
