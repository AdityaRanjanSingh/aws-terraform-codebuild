variable "name" {
  type = string
}
variable "description" {
  type    = string
  default = ""
}
variable "build_timeout" {
  type    = string
  default = "60"
}


variable "artifact" {
  description = "Populates the Artifact block"
  type        = map
  default = {
    encryption_disabled = false
    packaging           = "NONE"
    type                = "NO_ARTIFACTS"
    namespace_type      = "NONE"
  }
}
variable "environment" {
  description = "A map to describe the build environment and populate the environment block"
  type        = map
  default = {
    privileged_mode = "false"
    type            = "LINUX_CONTAINER"
    image           = "aws/codebuild/nodejs:6.3.1"
    compute_type    = "BUILD_GENERAL1_SMALL"
  }
}

variable "bucketname" {
  type    = string
  default = ""
}
variable "role" {
  default = ""
}

variable "sourcecode" {
  default = {
    location  = ""
    type      = ""
    buildspec = ""
  }
}
