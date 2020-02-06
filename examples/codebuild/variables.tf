variable "name" {
  type        = string
  description = "The name of the codebuild project"
}
variable "artifact" {
  type = map

}
variable "source_code" {
  type = map
}


