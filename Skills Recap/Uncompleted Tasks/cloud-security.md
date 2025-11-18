# Cloud Security (Recap & Application)

## Overview
Cloud security focuses on protecting data, workloads, and infrastructure hosted in cloud environments.  
For AWS-based systems, it ensures that configurations, access, and data storage remain secure against internal and external threats.

## Core Skills Recap
- **Shared Responsibility Model:** Understanding AWS’s division of security responsibilities.  
- **Identity & Access Management (IAM):** Applying least-privilege policies, MFA, and role-based access.  
- **Data Encryption:** Using **AWS KMS** and **S3 encryption** for data at rest and **TLS** for data in transit.  
- **Monitoring & Logging:** Enabling **CloudTrail**, **Config**, and **GuardDuty** for visibility.  
- **Network Security:** Designing secure VPCs and applying Security Groups and NACLs effectively.  
- **Incident Response:** Leveraging AWS tools to isolate, investigate, and remediate security events.

## Tools To Be Used
- **AWS Management Console / CLI** – Configuration and access control.  
- **AWS IAM, GuardDuty, Config, CloudTrail** – Monitoring and governance.  
- **AWS KMS** – Encryption management.  
- **AWS Inspector / Security Hub** – Vulnerability and compliance scanning.  
- **Terraform / CloudFormation** – Secure infrastructure automation.

## Practical Application / Lab Work
- Configured S3 bucket policies and tested access controls.  
- Set up GuardDuty alerts for unauthorised login attempts.  
- Implemented encryption using AWS KMS for stored claim data.  
- Deployed test instances and validated IAM roles against best practices.

## SBS Relevance
SBS relies on AWS for hosting portals and storing customer and claims data.  
Proper cloud security ensures:  
- **Confidentiality** of sensitive information.  
- **Integrity** of fraud and claim systems.  
- **Compliance** with GDPR and ISO 27001.  
- Rapid **incident response** and audit readiness.

## Reflection
Recapping AWS cloud security emphasised how small misconfigurations can lead to large breaches.  
Regular reviews, automation, and governance are key to maintaining continuous protection.

## Next Steps
- ✅ Deepen AWS Security Specialty knowledge.  
- ✅ Practise using Security Hub for compliance checks.  
- ✅ Automate AWS policy audits with Lambda scripts.
