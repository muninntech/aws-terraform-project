variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}


resource "aws_instance" "this" {
  ami           = var.ami_id            # Use the value of ami_id passed to the module
  instance_type = var.instance_type     # Use the value of instance_type passed to the module
  tags = {
    Name = var.name                      # Use the value of name passed to the module
  }
}

output "instance_id" {
  value = aws_instance.this.id
}
