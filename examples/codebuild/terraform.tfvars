name = "terraform-test-project"
artifact = {
  type                = "CODEPIPELINE"
  namespace_type      = "BUILD_ID"
  packaging           = "ZIP"
  encryption_disabled = false
}
source_code = {
  type      = "CODEPIPELINE"
  location  = "location of s3 "
  buildspec = "buildspec.yml"
}
