```
module "my_irsa" {
  source = "../../"

  idp_arn = "oidc.eks.us-west-2.amazonaws.com/id/XXXXXXXXXXXXXXXXXXXX"
  idp_url = "https://something.whatever.com"

  name      = "my-service-account"
  namespace = "my-cool-k8s-app"

  inline_policies = [
    {
      name   = "policy-1"
      policy = file("${path.module}/templates/example-policy.json")
    }
  ]

  policy_attachments = [
    "arn:aws:iam::aws:policy/job-function/DatabaseAdministrator"
  ]
}

```
