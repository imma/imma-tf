variable "service_sg" {}
variable "env_sg" {}
variable "service_iam_role" {}

resource "aws_security_group_rule" "ssh_into_run" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.service_sg}"
}

resource "aws_iam_role_policy_attachment" "administrator_ro" {
  role       = "${var.service_iam_role}"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}
