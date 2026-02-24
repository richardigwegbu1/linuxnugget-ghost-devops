output "ec2_public_ip" {
  value = aws_eip.ghost.public_ip
}

output "ec2_instance_id" {
  value = aws_instance.ghost.id
}

output "ssh_command" {
  value = "ssh -i <path-to-your-key.pem> ec2-user@${aws_eip.ghost.public_ip}"
}
