resource "aws_instance" "integration" {
  ami = var.aws_ami
  instance_type = var.aws_instance
  tags = {
    Name = var.aws_name
  }

output "address" {
  value = aws_instance.integration.public_ip
}

  provisioner "local-exec" {
    command = "echo ${aws_instance.integration.public_ip} >> ./Ansible/inventory.txt"
  }
}
