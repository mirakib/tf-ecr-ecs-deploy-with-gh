resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  # Allow inbound HTTP traffic on port 8000
  ingress {
    description = "Allow HTTP inbound traffic on port 8000"
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "MySecurityGroup"
  }
}
