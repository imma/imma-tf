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
  description              = "nat can ping everything"
}

resource "aws_security_group_rule" "ssh_into_everything" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = "${var.service_sg}"
  security_group_id        = "${var.env_sg}"
  description              = "nat can ssh to everything"
}

resource "aws_security_group_rule" "allow_zerotier" {
  type              = "ingress"
  from_port         = 9993
  to_port           = 9993
  protocol          = "udp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.env.id}"
  description       = "zerotier inbound"
}
