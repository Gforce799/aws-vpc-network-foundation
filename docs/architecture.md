# Architecture Notes

## Context

A reusable VPC foundation with public, private, and isolated subnet tiers, optional NAT, gateway endpoints, interface endpoints, and flow logs.

## Design principles

- Secure-by-default resources with explicit escape hatches.
- Independent environments through variables and naming.
- Operational visibility through logs, alarms, or managed service telemetry.
- Review-friendly Terraform that separates inputs, outputs, and resources.

## Deployment model

The root module can be consumed directly or wrapped by an environment layer
such as Terragrunt, Terraform Cloud, or a central platform pipeline. In a
production organization, backend configuration should be provided outside
the module so the same code can serve multiple accounts.

## Risks and trade-offs

- Some AWS services require account-level enablement or service-linked roles.
- Example defaults optimize for safe demonstration, not lowest cost.
- Networking, identity, and logging controls should be integrated with the
  target organization's landing zone before production use.
