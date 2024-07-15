output "public_ip" {
  description = "IPs públicos"
  # Lista
  # value       = [for instance in aws_instance.this : instance.public_ip]
  # value       = [for key, instance in aws_instance.this : "${key} is ${instance.public_ip}"]

  # Objeto
  # value       = {for instance in aws_instance.this : instance.tags["Name"] => instance.public_ip}
  # value       = { for key, instance in aws_instance.this : key => instance.public_ip }
  value       = { for key, instance in aws_instance.this : instance.tags["Env"] => instance.public_ip... }
}
