# aws-terraform-codebuild

Reusable module to quickly get started with aws codebuild

See the examples directory sample code to use

### Prerequisites

What things you need to install the software and how to install them

Terraform 0.12 or greater

[see documentation here](https://learn.hashicorp.com/terraform/getting-started/install.html)


### Usage

```
module "codecommit" {
  source = "github.com/AdityaRanjanSingh/aws-terraform-codebuild"
  name       = var.name
  artifact   = var.artifact
  sourcecode = var.source_code
}

variable "name" {
    type = string
    default = "name-of-the-repo"
}

variable "artifact" {
  type = map
  default = {
    type                = "CODEPIPELINE"
    namespace_type      = "BUILD_ID"
    packaging           = "ZIP"
    encryption_disabled = false
}
}
variable "source_code" {
  type = map
  default = {
    type      = "CODEPIPELINE"
    location  = "location of s3 "
    buildspec = "path to buildspec"
}
}
```

## Authors

* **Aditya Ranjan Singh** - *Initial work* 

