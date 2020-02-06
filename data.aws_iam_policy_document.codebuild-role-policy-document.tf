data "aws_iam_policy_document" "codebuild-role-policy-document" {

  statement {
    sid = "1"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "${aws_s3_bucket.artifacts.arn}",
      "${aws_s3_bucket.artifacts.arn}/*",
      "arn:aws:s3:::codepipeline-${data.aws_region.current.name}-163714928765/*",
      "arn:aws:s3:::codepipeline-${data.aws_region.current.name}-163714928765",
    ]
    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "ec2:CreateNetworkInterface",
      "ec2:DescribeDhcpOptions",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface",
      "ec2:DescribeSubnets",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeVpcs",
    ]
    resources = [
      "*",
    ]
  }
}
