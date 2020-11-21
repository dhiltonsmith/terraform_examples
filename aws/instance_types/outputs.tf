output "instance_types" {
  description = "Instance types in the region specified based on the instance classes requested."
  value = data.aws_ec2_instance_type_offerings.instance_types.instance_types
}

