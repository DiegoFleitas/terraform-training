# NOTE: We are using dynamic variables here, the ones at variables.tf were hardcoded
# applying the changes will show the variables values on the terminal
# but there are easier ways to see them once applied ex: $ terraform output
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}
