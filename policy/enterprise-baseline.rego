package terraform.enterprise_baseline

deny[msg] {
  change := input.resource_changes[_]
  change.type == "aws_s3_bucket_public_access_block"
  after := change.change.after
  not after.block_public_acls
  msg := sprintf("%s must block public ACLs", [change.address])
}

deny[msg] {
  change := input.resource_changes[_]
  change.type == "aws_kms_key"
  after := change.change.after
  not after.enable_key_rotation
  msg := sprintf("%s must enable key rotation", [change.address])
}
