# AWS VPC Network Foundation

    A reusable VPC foundation with public, private, and isolated subnet tiers, optional NAT, gateway endpoints, interface endpoints, and flow logs.

    **Portfolio size:** Medium

    ## AWS services covered

    - Amazon VPC
- NAT Gateway
- VPC endpoints
- CloudWatch Logs
- IAM

    ## Enterprise controls demonstrated

    - Provider pinning and repeatable Terraform workflows.
    - Encryption at rest with KMS where the service supports customer managed keys.
    - Least-privilege IAM roles and narrowly scoped service policies.
    - Consistent tagging, naming, retention, and environment separation.
    - CI checks for formatting, validation, linting, and IaC security scanning.
    - Security documentation, architecture notes, and example module usage.

    ## Quick start

    ```bash
    terraform init
    terraform fmt -recursive
    terraform validate
    terraform plan -out=tfplan
    ```

    Use `examples/standard` as the caller pattern for this template.

    ## Production hardening checklist

    - Replace example CIDR ranges, ARNs, domain names, and retention windows.
    - Connect remote state with state locking before team usage.
    - Review every IAM trust relationship against your account structure.
    - Enable branch protection and required CI checks in GitHub.
    - Run a cost estimate before deployment to a live AWS account.

    ## Repository intent

    This repository is designed as a professional AWS infrastructure portfolio
    sample. It favors clear architecture, security defaults, and reviewable
    Terraform over one-click deployment magic.
