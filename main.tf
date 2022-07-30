resource "aws_instance" "integration" {
  ami = var.aws_ami
  instance_type = var.aws_instance
  tags = {
    Name = var.aws_name
  }
}
