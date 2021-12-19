resource "aws_iam_role" "role" {
  name = var.iam_prefix != null ? join("-", [var.iam_prefix, var.name]) : var.name
  path = var.iam_path

  assume_role_policy = templatefile("${path.module}/templates/trust-policy.json.tpl", {
    idp_arn   = var.idp_arn
    idp_url   = var.idp_url
    name      = var.name
    namespace = var.namespace
  })
}
