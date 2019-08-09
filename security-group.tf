/* Default security group */
resource "aws_security_group" "sg" {
  name = "sgterraform"
  description = "Default security group that allows inbound and outbound traffic from all instances in the VPC"
  vpc_id = "<Your VPC ID>"

  ingress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
  }

}