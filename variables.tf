variable "ami" {
  description = "The AMI to use for AWS image"
  default     = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  description = "The type of AWS instance to use"
  default     = ""
}

variable "key_pair" {
  description = "The key pair name is for instance key pair"
  default     = ""

}

variable "aws_Security_Group" {
  description = "This is for security group"
  type        = list(number)
  default     = []

}
