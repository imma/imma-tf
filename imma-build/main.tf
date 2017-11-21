variable "service_sg" {}
variable "env_sg" {}
variable "env_efs_sg" {}
variable "service_iam_role" {}

resource "aws_security_group_rule" "efs_mount" {
  type                     = "ingress"
  from_port                = 2049
  to_port                  = 2049
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_efs_sg}"
}
