output "aws_id" {
    value = data.aws_ami.joindevops
}

output "aws_instances_info" {
    value = data.aws_instance.terraform-instance
}