# Mock Risk Assessment for AWS Marketplace Management Portal

## 1. Scope

This assessment covers the AWS Marketplace seller-management portal, including:
- Seller login and authentication
- Dashboard and product listing management
- Asset uploads (AMIs, containers)
- Reports and payout data
- Cloud-hosted backend APIs
- Banking/tax/KYC data

## 2. Assets

- Seller credentials
- Banking information
- Tax/KYC documents
- Uploaded product assets (AMIs/containers)
- Reports and usage data
- Admin and staff accounts
- Audit logs
- API keys and secrets

## 3. Threats & Vulnerabilities

### Threats
- Credential compromise
- Insider misuse
- Malicious AMI upload
- Unauthorized data access
- API abuse
- Phishing attacks

### Vulnerabilities
- Weak/missing MFA
- Poor upload validation
- Weak RBAC controls
- Insufficient logging
- Web app flaws (XSS/CSRF)
- Misconfigurations

## 4. Risk Scoring

| Risk ID | Description                            | Probability (1-5) | Impact (1-5) | Score | Category               |
|--------:|----------------------------------------|------------------:|-------------:|------:|------------------------|
| R1      | Seller account credentials compromised | 4                 | 5            | 20    | Authentication         |
| R2      | Malicious AMI uploaded                 | 3                 | 5            | 15    | Asset Integrity        |
| R3      | Unauthorized access to bank/tax data   | 3                 | 4            | 12    | Data Confidentiality   |
| R4      | XSS/CSRF in portal                     | 2                 | 4            | 8     | AppSec                 |

### Scoring guidance
- Likelihood / Impact scale: 1 (Very Low) — 5 (Very High)  
- Example thresholds: Score ≥ 15 = High (urgent); 8–14 = Medium; < 8 = Low

## 5. Mitigations

| Risk ID | Mitigation                                                               | Owner           | Status      |
|--------:|--------------------------------------------------------------------------|-----------------|-------------|
| R1      | Enforce MFA for all accounts; monitor auth logs; login throttling/rate-limit | IT Security     | Planned     |
| R2      | Malware scanning of uploads; sandboxing; manual review                    | Product Security| In Progress |
| R3      | Tighten RBAC; encryption at rest/in-transit; access monitoring & alerts   | Compliance      | Planned     |
| R4      | Deploy WAF rules; code review and secure coding; regular pen tests        | DevOps          | Open        |

## 6. Risk Register Summary

| Risk ID | Description                         | Probability | Impact | Score | Key Mitigation(s)                     | Owner           | Status      |
|--------:|-------------------------------------|-----------:|-------:|------:|----------------------------------------|-----------------|-------------|
| R1      | Seller account compromised          | 4          | 5     | 20    | MFA, monitoring, throttling            | IT Security     | Planned     |
| R2      | Malicious AMI upload                | 3          | 5     | 15    | Scanning, sandboxing, manual review    | Product Security| In Progress |
| R3      | Unauthorized data access (bank/tax) | 3          | 4     | 12    | RBAC, encryption, monitoring           | Compliance      | Planned     |
| R4      | Web app vulnerability (XSS/CSRF)    | 2          | 4     | 8     | WAF, code reviews, pen testing         | DevOps          | Open        |

## 7. Risk Assessment

Identifying threats, vulnerabilities, and impacts.

### Example Risk Register (sample entries)

| ID     | Asset                     | Risk                     | Threat                                   | Vulnerability                                      | Likelihood (1-5) | Impact (1-5) | Score | Mitigation                                                                                     | Owner            | Due  |
|--------|---------------------------|--------------------------|------------------------------------------|----------------------------------------------------|------------------|--------------|-------|------------------------------------------------------------------------------------------------|------------------|------|
| R-001  | Web portal (admin)       | Unauthorized access      | Credential stuffing / stolen creds      | No MFA for admin accounts; weak passwords         | 4                | 5            | 20    | Enable MFA, strong password policy, rate-limit logins, monitor auth logs                     | App Security     | 2w   |
| R-002  | Remote endpoints          | Malware spread to internal network | User downloads malicious file            | Unmanaged personal devices; no posture checks     | 3                | 4            | 12    | Enforce device checks, deploy EDR, provide company devices, user training                    | IT Ops           | 1m   |
| R-003  | Payments API (vendor)    | Exposure of PII          | Misconfiguration or insecure API        | No config scanning; weak vendor controls          | 2                | 5            | 10    | Regular API scans, tighten vendor contracts, require penetration testing                      | Procurement/Sec  | 3w   |

### Scoring guide

- Likelihood / Impact: 1 (Very Low) — 5 (Very High)  
- Risk treatment threshold example: Score ≥ 15 = High (urgent); 8–14 = Medium; < 8 = Low
