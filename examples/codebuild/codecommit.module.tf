module "project" {
  source     = "../../"
  name       = var.name
  artifact   = var.artifact
  sourcecode = var.source_code
}
