module "this" {
    source = "../.."

    name        = "vpc-network-foundation"
    environment = "dev"

vpc_cidr           = "10.80.0.0/16"
az_count           = 3
enable_nat_gateway = true
single_nat_gateway = false

    tags = {
      Owner      = "platform-team"
      CostCenter = "portfolio"
    }
  }
