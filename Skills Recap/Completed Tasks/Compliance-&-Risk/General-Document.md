## 1. Risk Assessment

### Example Risk Register (sample entries)

| ID | Asset | Risk | Threat | Vulnerability | Likelihood (1-5) | Impact (1-5) | Score | Mitigation | Owner | Due |
| --- | --- | --- | --- | --- | ---: | ---: | ---: | --- | --- | --- |
| R-001 | Web portal (admin) | Unauthorized access | Credential stuffing / stolen creds | No MFA for admin accounts; weak passwords | 4 | 5 | 20 | Enable MFA, strong password policy, rate-limit logins, monitor auth logs | App Security | 2w |
| R-002 | Remote endpoints | Malware spread to internal network | User downloads malicious file | Unmanaged personal devices; no posture checks | 3 | 4 | 12 | Enforce device checks, deploy EDR, provide company devices, user training | IT Ops | 1m |
| R-003 | Payments API (vendor) | Exposure of PII | Misconfiguration or insecure API | No config scanning; weak vendor controls | 2 | 5 | 10 | Regular API scans, tighten vendor contracts, require penetration testing | Procurement/Sec | 3w |

### Scoring guide
- Likelihood / Impact: 1 (Very Low) — 5 (Very High)  
- Risk treatment threshold example: Score ≥ 15 = High (urgent); 8–14 = Medium; < 8 = Low


## 2. Control Frameworks


### ISO

ISO 27001 is an International management standard for which information security management systems use for risk-based governance, ploices, processes and auditable certifications 

### NIST

Nist is a set of US-Origin frameworks and guidance which publishes advice for cybersecurity and checklists which can be followed, their main model follows five easy steps which are:

Identify: Knowing what assets are being protected

Protect: put in basic defenses such as passwords, backups and access rules.

Detect: have ways of noticing events happening .

Respond: steps to contain and fix an incident.

Recover: getting systems back up and running and learning what can be taken from the event to be adheard to in the future.

SP 800-53 is a big list of specific security measures you can use.

SP 800-30 explains how to do a simple risk check: find threats, judge how likely and how bad, then decide what to do.

**Control Frameworks Conclusion**

NIST gives clear and pratical steps and examples which can be used to improve a business.

## 3. Regulatory Compliance

### GDPR

GDPR which stands for general data protection regulation is used to protect personal data of a person or companies and is used everyday to protect any fragile data.

### PCI DSS

PCI DSS known as Payment Card Industry Data Security is an industry standard protocol which protects cardholders payment data and this applies to ant company which stores, processes or transmits credit/debit card data.

### UK Data Protection Act

The UK data protection act works with GDPR to regulate any personal data within the UK and includes extended measure of GDPR with extra measures to keep data more confidential.

## 4. Business Impact Analysis (BIA) — Examples & Template

How to use: for each critical service, record impacts across categories, determine maximum acceptable outage (RTO), acceptable data loss (RPO), recovery priority, key dependencies and immediate recovery actions.

### Example 1 — AWS Marketplace Seller Portal (Customer-facing)
- Service: Seller management portal (login, listings, payouts)
- Criticality: High
- Primary users: Sellers, Finance, Support
- Impact if unavailable:
  - Financial: Loss of new listings and payouts processing → moderate to high revenue impact
  - Operational: Support backlog, inability to manage products → high
  - Reputational: Seller trust erosion → high
  - Legal/Compliance: Delayed KYC/payouts may breach contracts → medium
- RTO: 4 hours
- RPO: 1 hour
- Dependencies: Authentication service, database, payment gateway, S3 for assets (AWS Object Storage), CI/CD (automated deployment model)
- Immediate recovery actions: Failover DB restore from backup, enable maintenance page, restore authentication from standby, re-route payment queue to backup processor, lock down any assets which aren't secure 
- Recovery priority: 1 (highest)
- Owner: Product Security / IT Ops

### Example 2 — Payments API (Vendor-integrated)
- Service: Payments API used to process buyer transactions
- Criticality: Very High
- Impact if unavailable:
  - Financial: Direct loss of revenue and chargebacks → very high
  - Operational: Sales halted → high
  - Legal/Compliance: PCI obligations and reporting → high
- RTO: 1 hour
- RPO: 15 minutes
- Dependencies: Payment vendor, key rotation service, network connectivity
- Immediate recovery actions: Switch to secondary vendor or queued offline processing; rotate compromised keys if needed
- Recovery priority: 0 (critical)
- Owner: Finance / Procurement


### Simple BIA Template (table row example)
| Service | Criticality (H/M/L) | RTO | RPO | Primary Impacts (Finance/Op/Reputation/Legal) | Key Dependencies | Recovery Priority | Owner | Immediate Actions |
|---|---:|---:|---:|---|---|---:|---|---|
| Seller portal | High | 4h | 1h | Finance:Med / Op:High / Rep:High / Legal:Med | Auth, DB, S3, Payments | 1 | IT Ops / Product Sec | Failover DB, enable maintenance page, re-route queues |

## 5. Audit & Reporting

### Preparing for internal and external compliance reviews — Example

Audit evidence pack 

- Scope: AWS Marketplace Seller Portal (seller data, payments, uploads)  
- Objective: Show control coverage for GDPR, PCI DSS (if applicable), ISO 27001 Annex A  
- Review date: 2025-11-XX  
- Contact / owner: Compliance Lead — name@company.com  
- Summary findings: [short bullets]  
- Next actions: [short bullets]

Pre-review checklist (quick)
- Data inventory completed (path: docs/data-inventory.xlsx) — Owner: Compliance — Status: Done/ToDo  
- Risk register exported (path: docs/risk-register.csv) — Owner: App Security — Status: Done/ToDo  
- Policies available and signed: InfoSec, Access Control, Backup — Owner: GRC — Last reviewed date  
- Evidence collected: MFA screenshots, RBAC config, S3 bucket policies, encryption configs, API gateway logs  
- Technical evidence: vulnerability scan report, penetration test summary, patching records  
- Operational evidence: incident response playbook, recent incident post‑mortem, BIA & recovery test results  
- Vendor evidence: Data Processing Agreements, SOC2/ISO certificates from vendors (payments, hosting)  
- Training records: security awareness completion list for relevant staff  
- Logs retained: auth/privilege changes, backup logs, SIEM alert summary (retention policy evidence)  
- Regulatory-specific: DPIA (GDPR), card flow diagram and SAQ (PCI DSS)

Sample evidence index (table format to include)
| Item | Path | Owner | Last updated | Notes |
|---|---|---|---:|---|
| Data inventory | docs/data-inventory.xlsx | Compliance | 2025-10-12 | PII mapping included |
| MFA config (admin) | evidence/mfa-admin.png | IT Security | 2025-11-01 | Screenshot + config export |
| Vulnerability scan | evidence/va-scan-2025-10.pdf | DevOps | 2025-10-20 | High/Medium findings listed |
| DPIA | docs/dpia-seller-portal.md | Privacy | 2025-09-30 | Required for KYC processing |
| Vendor DPA | contracts/payment-dpa.pdf | Procurement | 2024-12-05 | Signed DPA present |

Pre-review timeline (example)
- T‑14 days: Gather documents, assign owners for each evidence item  
- T‑7 days: Internal walkthrough with reviewers; identify gaps  
- T‑3 days: Resolve gaps, collect screenshots/exports, prepare one‑page pack  
- Day 0: Conduct review / auditor meeting — present scope, evidence index, live demo if needed  
- T+7 days: Deliver remediation plan and target dates

How to present during a review
- Lead with scope and evidence index so reviewers know what to expect.  
- Provide a short demo of critical controls (auth/MFA, upload validation, logging).  
- For manual controls, include owner attestation (signed note or email).  
- Be ready to show live evidence (screenshots, export files) and provide read-only access where appropriate.  
- Agree and record remediation deadlines and owners during the meeting.

Recommended deliverables
- evidence index 
- audit summary 
- remediation-plan.csv  
- folder with screenshots, exports, reports

Usage note
- Keep the evidence index versioned in Git and record last reviewer + date.  
- Automate regular exports (MFA config, RBAC lists, S3 policy) to automate evidence collection.
  
