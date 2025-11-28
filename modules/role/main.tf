
resource "alicloud_ram_role" "new_role" {
  name        = var.role_name
  description  = "Terraform-managed role with no permissions"
  force       = true
}

resource "alicloud_ram_policy" "empty_policy" {
  name        = "${var.role_name}-empty-policy"
  description  = "Empty policy for initial role"
  policy_document = jsonencode({
    Version   = "1"
    Statement = []
  })
}

resource "alicloud_ram_role_policy_attachment" "attach_empty" {
  role_name   = alicloud_ram_role.new_role.name
  policy_name = alicloud_ram_policy.empty_policy.name
  policy_type = "Custom"
}
