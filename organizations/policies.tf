resource "aws_organizations_policy" "allow_all" {
  name = "allow all"

  content = <<CONTENT
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Action": "*",
    "Resource": "*"
  }
}
CONTENT
}

resource "aws_organizations_policy_attachment" "unit" {
  policy_id = "${aws_organizations_policy.allow_all.id}"
  target_id = "${aws_organizations_organizational_unit.business_1.id}"
}
