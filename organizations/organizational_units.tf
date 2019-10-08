resource "aws_organizations_organizational_unit" "business_1" {
  name      = "Thin Slice Pizza"
  parent_id = "${aws_organizations_organization.main.roots.0.id}"
}

resource "aws_organizations_organizational_unit" "department_1" {
  name      = "HR"
  parent_id = "${aws_organizations_organizational_unit.business_1.id}"
}

resource "aws_organizations_organizational_unit" "department_2" {
  name      = "Finance"
  parent_id = "${aws_organizations_organizational_unit.business_1.id}"
}

resource "aws_organizations_organizational_unit" "department_3" {
  name      = "Technology"
  parent_id = "${aws_organizations_organizational_unit.business_1.id}"
}

resource "aws_organizations_organizational_unit" "department_4" {
  name      = "Sales"
  parent_id = "${aws_organizations_organizational_unit.business_1.id}"
}

resource "aws_organizations_organizational_unit" "environment_1" {
  name      = "development"
  parent_id = "${aws_organizations_organizational_unit.department_3.id}"
}

resource "aws_organizations_organizational_unit" "environment_2" {
  name      = "test"
  parent_id = "${aws_organizations_organizational_unit.department_3.id}"
}

resource "aws_organizations_organizational_unit" "environment_3" {
  name      = "production"
  parent_id = "${aws_organizations_organizational_unit.department_3.id}"
}

resource "aws_organizations_organizational_unit" "business_2" {
  name      = "Fat Slice Pizza"
  parent_id = "${aws_organizations_organization.main.roots.0.id}"
}

resource "aws_organizations_organizational_unit" "business_3" {
  name      = "Deleted Accounts"
  parent_id = "${aws_organizations_organization.main.roots.0.id}"
}
