output "ec2_public_ip" {
  value       = aws_instance.k3s_server.public_ip
  description = "Public IP address of the provisioned K3s EC2 instance"
}

output "ssh_connection_command" {
  value       = "ssh -i ~/.ssh/id_rsa ubuntu@${aws_instance.k3s_server.public_ip}"
  description = "Command to SSH into cluster node"
}