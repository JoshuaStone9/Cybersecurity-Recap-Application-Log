
- **Risk Assessment:**

### Example Risk Register (sample entries)

| ID | Asset | Risk | Threat | Vulnerability | Likelihood (1-5) | Impact (1-5) | Score | Mitigation | Owner | Due |
| --- | --- | --- | --- | --- | ---: | ---: | ---: | --- | --- | --- |
| R-001 | Web portal (admin) | Unauthorized access | Credential stuffing / stolen creds | No MFA for admin accounts; weak passwords | 4 | 5 | 20 | Enable MFA, strong password policy, rate-limit logins, monitor auth logs | App Security | 2w |
| R-002 | Remote endpoints | Malware spread to internal network | User downloads malicious file | Unmanaged personal devices; no posture checks | 3 | 4 | 12 | Enforce device checks, deploy EDR, provide company devices, user training | IT Ops | 1m |
| R-003 | Payments API (vendor) | Exposure of PII | Misconfiguration or insecure API | No config scanning; weak vendor controls | 2 | 5 | 10 | Regular API scans, tighten vendor contracts, require penetration testing | Procurement/Sec | 3w |

### Scoring guide
- Likelihood / Impact: 1 (Very Low) — 5 (Very High)  
- Risk treatment threshold example: Score ≥ 15 = High (urgent); 8–14 = Medium; < 8 = Low


- **Control Frameworks:**

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

- **Control Frameworks Conclusion**

NIST gives clear and pratical steps and examples which can be used to improve a business.

- **Regulatory Compliance:**

### GDPR

GDPR which stands for general data protection regulation is used to protect personal data of a person or companies and is used everyday to protect any fragile data.

### PCI DSS

PCI DSS known as Payment Card Industry Data Security is an industry standard protocol which protects cardholders payment data and this applies to ant company which stores, processes or transmits credit/debit card data.

### UK Data Protection Act

The UK data protection act works with GDPR to regulate any personal data within the UK and includes extended measure of GDPR with extra measures to keep data more confidential.

