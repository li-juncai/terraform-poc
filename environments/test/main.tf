# environments/test/main.tf
module "alicloud_role" {
  source = "../../modules/alicloud-role"
  service = "ecs.aliyuncs.com"  # 修改测试环境角色信任的服务
}
