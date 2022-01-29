# output "instance_ami" {
#   value = aws_instance.ubuntu.ami
# }

# output "instance_arn" {
#   value = aws_instance.ubuntu.arn
# }

output "key_pair" {
  value = aws_key_pair.kyohei.public_key
}

output "test_output" {
  value = var.test_tag
}

