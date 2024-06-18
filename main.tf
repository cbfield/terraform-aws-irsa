resource "aws_iam_role" "role" {
  description           = var.description
  force_detach_policies = var.force_detach_policies
  managed_policy_arns   = var.managed_policy_arns
  max_session_duration  = var.max_session_duration
  name                  = var.iam_prefix != null ? join("-", [var.iam_prefix, var.name]) : var.name
  path                  = var.iam_path
  permissions_boundary  = var.permissions_boundary
  tags = var.tags

  assume_role_policy = templatefile("${path.module}/templates/trust-policy.json.tpl", {
    idp_arn   = var.idp_arn
    idp_url   = var.idp_url
    name      = var.name
    namespace = var.namespace
  })

  dynamic "inline_policy" {
    for_each = { for policy in var.inline_policies : policy.name => policy }
    content {
      name   = inline_policy.value.name
      policy = inline_policy.value.policy
    }
  }
}

resource "aws_iam_role_policy_attachment" "attachment" {
  for_each = toset(var.policy_attachments)

  role       = aws_iam_role.role.name
  policy_arn = each.value
}
