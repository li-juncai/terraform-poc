terraform {
  backend "remote" {
    # 动态加载backend.hcl配置
    # 实际需通过-backend-config=../backend-config/backend.hcl传递
  }
}


module "alicloud_role" {
  source = "../../modules/alicloud-role"
  service = "ecs.aliyuncs.com"  # 修改测试环境角色信任的服务
}

output "test_role_arn" {
  value = module.test_role.role_arn
}
