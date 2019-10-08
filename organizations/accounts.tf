resource "aws_organizations_account" "account" {
  name      = "my_new_account"
  email     = "michael.hamouda1+2@gmail.com"
  role_name = "myOrganizationRole"
  parent_id = "${aws_organizations_organizational_unit.environment_1.id}"

  lifecycle {
    prevent_destroy = true
    ignore_changes = ["role_name"]
  }
}
