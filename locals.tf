locals {
  normalized_name = replace(lower(var.name), "/[^a-z0-9-]/", "-")
  name_prefix     = "${local.normalized_name}-${var.environment}"

  tags = merge(
    {
      Application = var.name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Repository  = "aws-vpc-network-foundation"
    },
    var.tags
  )
}
