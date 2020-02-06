locals {
  s3_bucket = "${var.name}-${data.aws_caller_identity.current.account_id}-artifacts"
}
