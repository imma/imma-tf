variable "service_sg" {}
variable "env_sg" {}
variable "env_efs_sg" {}
variable "service_iam_role" {}

resource "aws_security_group_rule" "ping_mint" {
  type                     = "ingress"
  from_port                = 8
  to_port                  = 0
  protocol                 = "icmp"
  source_security_group_id = "${var.app_sg}"
  security_group_id        = "${var.app_sg}"
  description              = "mint can ping mint "
}

resource "aws_security_group_rule" "into_mint" {
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "tcp"
  source_security_group_id = "${var.app_sg}"
  security_group_id        = "${var.app_sg}"
  description              = "mint can tcp into mint"
}
