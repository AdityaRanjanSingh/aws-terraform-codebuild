
resource "aws_iam_role_policy" "codebuild-rolepolicy" {
  role   = aws_iam_role.codebuild-role.name
  name   = "codebuild-policy-${var.name}"
  policy = data.aws_iam_policy_document.codebuild-role-policy-document.json
}
