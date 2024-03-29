resource "aws_subnet" "public_1" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  # The CIDR block fot the subnet.
  cidr_block = "192.168.0.0/18"

  # The AZ for the subnet.
  availability_zone = "ap-south-1a"

  # Redquired for EKS. Instances launched into the subnet should be assigned pulibc ip.
  map_public_ip_on_launch = true

  # A map of tags to assign to the resources.
  tags = {
    Name                        = "public-ap-south-1a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "public_2" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  # The CIDR block fot the subnet.
  cidr_block = "192.168.64.0/18"

  # The AZ for the subnet.
  availability_zone = "ap-south-1b"

  # Redquired for EKS. Instances launched into the subnet should be assigned pulibc ip.
  map_public_ip_on_launch = true

  # A map of tags to assign to the resources.
  tags = {
    Name                        = "public-ap-south-1b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

resource "aws_subnet" "private_1" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  # The CIDR block fot the subnet.
  cidr_block = "192.168.128.0/18"

  # The AZ for the subnet.
  availability_zone = "ap-south-1a"

  # A map of tags to assign to the resources.
  tags = {
    Name                              = "private-ap-south-1a"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "private_2" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  # The CIDR block fot the subnet.
  cidr_block = "192.168.192.0/18"

  # The AZ for the subnet.
  availability_zone = "ap-south-1b"

  # A map of tags to assign to the resources.
  tags = {
    Name                              = "private-ap-south-1b"
    "kubernetes.io/cluster/eks"       = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}