module "prod_role" {
  source     = "../../modules/role"
  role_name  = "prod-role-${random_string.suffix.result}"
}
