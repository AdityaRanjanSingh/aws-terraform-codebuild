resource "aws_iam_role" "codebuild-role" {
  name               = "AWSCodebuildRole-${data.aws_caller_identity.current.account_id}-${var.name}"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
