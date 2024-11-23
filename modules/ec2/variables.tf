variable "instance_type" {
  default = "t2.micro"
  description = "Instance type for EC2"
  type = string
}

variable "name" {
  description = "The name of the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  default     = ""
}

variable "security_group_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of security group rules"
  default     = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
