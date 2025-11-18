# Container & Serverless Security (Recap & Application)

## Overview
Container and serverless technologies improve scalability and efficiency, but they also introduce unique security risks.  
AWS services like **ECS**, **EKS**, and **Lambda** require specific controls to protect workloads.

## Core Skills Recapped
- **Image Hardening:** Using trusted base images and scanning with tools like Trivy.  
- **Least Privilege Functions:** Restricting Lambda IAM permissions.  
- **Runtime Protection:** Monitoring container behaviour.  
- **Secret Management:** Using AWS Secrets Manager for credentials.  
- **Logging & Monitoring:** Centralising logs with CloudWatch and CloudTrail.

## Tools Used
- **Docker / Trivy** – Image management and vulnerability scanning.  
- **AWS Lambda / ECR / ECS** – Serverless and container platforms.  
- **AWS Secrets Manager / Parameter Store** – Credential protection.  
- **Kubernetes RBAC** – Role-based cluster access control.

## Practical Application / Lab Work
- Built and deployed Docker containers in AWS ECS.  
- Configured Lambda functions with least-privilege IAM roles.  
- Scanned images with Trivy to identify vulnerabilities.  
- Tested log visibility using CloudWatch.

## SBS Relevance
SBS could use serverless or container-based systems for fraud analysis and API services.  
Securing these ensures:  
- No exposure of customer data via misconfigured containers.  
- Protection of function code integrity.  
- Compliance with GDPR and industry standards.

## Reflection
Container and serverless security require constant vigilance — automation and visibility are crucial.

## Next Steps
- ✅ Practise ECR image scanning and vulnerability management.  
- ✅ Explore AWS Lambda security best practices.  
- ✅ Study Kubernetes Pod Security Standards.
