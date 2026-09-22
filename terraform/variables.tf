variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "Target AWS Region"
}

variable "instance_type" {
  type        = string
  default     = "t3.medium"
  description = "EC2 Instance size for K3s cluster"
}

variable "ami_id" {
  type        = string
  default     = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS
  description = "Ubuntu AMI ID"
}