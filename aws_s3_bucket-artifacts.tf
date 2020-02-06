resource "aws_s3_bucket" "artifacts" {
    bucket = local.bucketname
  acl    = "private"
}
