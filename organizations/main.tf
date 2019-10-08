resource "aws_organizations_organization" "main" {
  feature_set = "ALL"
  enabled_policy_types = ["SERVICE_CONTROL_POLICY"]

  lifecycle {
    prevent_destroy = true
    ignore_changes = ["accounts", "non_master_accounts"]
  }
}
