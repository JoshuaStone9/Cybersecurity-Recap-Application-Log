# Data Encryption Lab Report – AWS KMS, S3, EBS, TLS

## 1. Overview

**Student / Analyst:**  
**Date:**  
**Environment (Account / Region):**  

### Objective
Explore and validate data encryption at rest and in transit using:
- S3 + KMS
- EBS encryption
- HTTPS/TLS with Wireshark capture

---

## 2. Lab Setup

- AWS Account ID : (REDACTED)  
- Region(s) used: eu-north-1
- Test IAM users/roles:
  - UserA (full KMS decrypt)
  - UserB (limited / no decrypt)
- Test resources:
  - S3 bucket(s): josh-s-s3-bucket 
  - EC2 instance(s): encryption-lab-instance
  - Key-pair-name: encryption-lab-key
  - KMS CMK ARN(s):  

---

## 3. Encryption at Rest – S3

### 3.1 Bucket Encryption Configuration

- Bucket name:  
- Encryption type:
  - [ ] SSE-S3 (AES256)
  - [ ] SSE-KMS (CMK)
- KMS key ID / ARN (if SSE-KMS):

**Screenshot:** S3 → Bucket → Properties → Default encryption  

**Notes:**
- Why this encryption option was chosen:
- Any bucket policy or SCP enforcing encryption (Y/N; details):

### 3.2 Decryption Permissions Test

**Scenario:**
- UserA: should be able to upload/download  
- UserB: should be blocked from decrypting

**Steps performed:**
1. Upload object as UserA.
2. Attempt `GetObject` as UserB.
3. Adjust IAM / KMS key policy if needed.

**Observed results:**
- Error messages (e.g., `AccessDenied`, `kms:Decrypt`):  
- CloudTrail evidence (event names, timestamps):

**Screenshots:**
- Failed access from UserB  
- CloudTrail event details (optional)

**Conclusion:**
- Who can decrypt S3 data and why?

---

## 4. Encryption at Rest – EBS

### 4.1 EBS Default Encryption

- Is EBS encryption by default enabled? (console screenshot or CLI output)  
- Default KMS key for EBS:

**Screenshots:**
- EC2 → EBS → Encryption By Default page

### 4.2 Volume-Level Encryption Test

- EC2 instance ID:  
- Volume ID(s):  
- Encryption status: Encrypted [Y/N], KMS key:  

**Steps performed:**
1. Create/attach encrypted volume.
2. Attempt attach/use from a principal without KMS access (if tested).

**Observed results:**
- Any permission errors:
- Logs / CloudTrail events:

**Conclusion:**
- How EBS encryption is enforced and who can use encrypted volumes.

---

## 5. Encryption in Transit – HTTPS/TLS + Wireshark

### 5.1 Test Application

- URL(s) tested (HTTP & HTTPS):  
- Web stack (e.g., Nginx/Apache/ALB + ACM):  

### 5.2 Wireshark Capture

**Steps performed:**
1. Start capture on interface:  
2. Visit `http://...` (if used)  
3. Visit `https://...`  
4. Filter in Wireshark: `tls` or `tcp.port == 443`

**Screenshots:**
- Packets showed as TLS/SSL  
- TLS handshake (ClientHello / ServerHello) details  
- Encrypted Application Data view

**Observations:**
- HTTP payload readable? (Y/N)  
- HTTPS/TLS payload readable? (N – should be encrypted)  
- TLS version / cipher suite negotiated:

---

## 6. Security & Compliance Discussion

### 6.1 Security Benefits

- How S3 encryption protects at rest:  
- How EBS encryption protects at rest:  
- How TLS protects in transit:  

### 6.2 Compliance Impact

- Which controls could this support (e.g., PCI DSS, ISO 27001, SOC 2)?  
- How logs + KMS key policies help with audits:  

---

## 7. Issues Encountered & Resolutions

- Misconfigurations or errors:
- How they were fixed:
- Lessons learned:

---

## 8. Reflection

**Personal Reflection:**
- What did you learn about key management and permissions?  
- How did KMS policies and IAM interplay surprise you?  
- What would you do differently in a real production environment?

---

## 9. Next Steps

- Automations to implement (Config / Lambda / SCP):  
- Additional tools to explore (e.g., CloudTrail Lake, Security Hub, GuardDuty, Volatility for EC2 memory, etc.)  
