{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "${idp_arn}"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "${replace(idp_url, "https://", "")}:sub": "system:serviceaccount:${namespace}:${name}"
        }
      }
    }
  ]
}
