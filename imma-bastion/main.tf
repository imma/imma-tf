variable "service_sg" {}
variable "env_sg" {}
variable "env_efs_sg" {}
variable "service_iam_role" {}

resource "aws_security_group_rule" "ping_everything" {
  type                     = "ingress"
  from_port                = 8
  to_port                  = 0
  protocol                 = "icmp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_sg}"
  description              = "bastion can ping everything"
}

resource "aws_security_group_rule" "into_everything" {
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_sg}"
  description              = "bastion can tcp into everything"
}

resource "aws_security_group_rule" "efs_mount" {
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_efs_sg}"
  description              = "bastion can mount env efs"
}

resource "aws_security_group_rule" "efs_mount_env" {
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "tcp"
  source_security_group_id = "${var.env_sg}"
  security_group_id        = "${var.env_efs_sg}"
  description              = "env can mount env efs"
}

resource "aws_iam_role_policy_attachment" "administrator_ro" {
  role       = "${var.service_iam_role}"
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_role_policy_attachment" "iam_ro" {
  role       = "${var.service_iam_role}"
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}
