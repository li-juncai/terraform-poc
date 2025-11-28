
terraform {
  backend "remote" {
    # 同测试环境后端配置
  }
}

module "prod_role" {
  source = "../../modules/alicloud-role"
  # 可添加正式环境特定参数
}

output "prod_role_arn" {
  value = module.prod_role.role_arn
}
