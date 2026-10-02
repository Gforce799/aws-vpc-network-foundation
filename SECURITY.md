# Security Policy

This repository is a portfolio template and is not connected to production
accounts. Review and adapt every variable, network range, principal ARN, and
retention period before deployment.

## Reporting

Open a private advisory or contact the repository owner if you find a security
issue in the template. Do not place secrets, account IDs, or live credentials in
public issues.

## Baseline controls

- Encryption at rest is enabled for supported managed services.
- Public access is blocked on S3 buckets unless the workload explicitly needs it.
- Logs, metrics, and audit resources are included where the service supports it.
- Terraform variables include validation for blast-radius-sensitive inputs.
- Example values are intentionally non-production.
