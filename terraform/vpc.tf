resource "aws_vpc" "main" {
  # This is the CIDR block of the VPC.
  cidr_block = "192.168.0.0/16"

  # Makes your instance shared on the host.
  instance_tenancy = "default"

  # Required for EKS. Enable/Disable DNS support in VPC.
  enable_dns_support = true

  # Required for EKS. Enable/Disable DNS hostnames in VPC.
  enable_dns_hostnames = true

  # Requests an Amazon-provided IPv6 CIDR block.
  assign_generated_ipv6_cidr_block = false

  # A map of tags to assign to resource.
  tags = {
    Name = "main"
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  sensitive   = false
  description = "VPC id."
  depends_on  = []
}
