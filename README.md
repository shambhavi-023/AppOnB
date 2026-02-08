This repository provides Infrastructure‑as‑Code (IaC) templates, modules, and examples for onboarding and managing Saviynt Identity Cloud configurations using the Saviynt Terraform Provider.

Terraform enables Saviynt configuration to be:

Repeatable
Auditable
Version‑controlled
Automated with CI/CD
Consistent across environments


Why Terraform for Saviynt?

Automated and traceable configuration management.
The Saviynt Terraform Provider allows you to manage configurations such as:

Security Systems
Endpoints
Connections
Entitlements
Roles
Jobs

Key Advantages
1. DevOps‑Native Integration
Works seamlessly with existing Terraform workflows and CI/CD pipelines.
2. Safe Change Management
Terraform plan + state enables drift detection and prevents unauthorized manual edits.
3. Seamless Environment Promotion
Promote the same code across dev → test → prod without UI rework.
4. Version Control & Auditability
Git enables:
Full history
Pull-request approvals
Rollbacks
Compliance-ready audit trails


Prerequisites

Tools Needed

Terraform v1.3+
Saviynt Terraform Provider 
Git

Saviynt Requirements

API Access enabled
Client ID & Secret
Appropriate Saviynt roles/permissions