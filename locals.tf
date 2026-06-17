locals {
  prefix = "${var.project_name}-"
  tags = {
    Project = "${var.project_name}"
    ManagedBy = "terraform"
  }
}