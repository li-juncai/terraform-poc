module "test_role" {
  source     = "../../modules/role"
  role_name  = "test-role-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 6
  special = false
}
