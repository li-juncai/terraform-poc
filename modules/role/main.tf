resource "alicloud_ram_role" "example" {
  name        = "tf-github-flow-role"
  description  = "Created by Terraform GitHub Flow"
  document     = <<EOF
{
  "Statement": [{
    "Action": "sts:AssumeRole",
    "Effect": "Allow",
    "Principal": {
      "Service": ["ecs.aliyuncs.com"]  # 示例：ECS服务角色
    }
  }]
}
EOF
  force       = true  # 覆盖已存在角色
}

output "role_arn" {
  value = alicloud_ram_role.example.arn
}
