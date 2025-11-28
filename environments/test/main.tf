terraform {
  backend "remote" {
    # 动态加载backend.hcl配置
    # 实际需通过-backend-config=../backend-config/backend.hcl传递
  }
}

module "test_role" {
  source = "../../modules/alicloud-role"
  # 可添加测试环境特定参数
}

output "test_role_arn" {
  value = module.test_role.role_arn
}
