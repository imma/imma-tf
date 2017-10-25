variable "service_sg" {}
variable "env_sg" {}
variable "env_efs_sg" {}
variable "service_iam_role" {}

resource "aws_security_group_rule" "public_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${var.service_sg}"
}

resource "aws_security_group_rule" "public_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${var.service_sg}"
}

resource "aws_security_group_rule" "ping_everything" {
  type                     = "ingress"
  from_port                = 8
  to_port                  = 0
  protocol                 = "icmp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_sg}"
}

resource "aws_security_group_rule" "ssh_into_everything" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_sg}"
}
