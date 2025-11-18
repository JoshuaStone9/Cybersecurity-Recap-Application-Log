# Mock Risk Assessment for AWS Marketplace Management Portal

## 1. Scope

This assessment covers the AWS Marketplace seller-management portal,
including: - Seller login and authentication - Dashboard and product
listing management - Asset uploads (AMIs, containers) - Reports and
payout data - Cloud-hosted backend APIs - Banking/tax/KYC data

## 2. Assets

-   Seller credentials
-   Banking information
-   Tax/KYC documents
-   Uploaded product assets (AMIs/containers)
-   Reports and usage data
-   Admin and staff accounts
-   Audit logs
-   API keys and secrets

## 3. Threats & Vulnerabilities

### Threats

-   Credential compromise
-   Insider misuse
-   Malicious AMI upload
-   Unauthorized data access
-   API abuse
-   Phishing attacks

### Vulnerabilities

-   Weak/missing MFA
-   Poor upload validation
-   Weak RBAC controls
-   Insufficient logging
-   Web app flaws (XSS/CSRF)
-   Misconfigurations

## 4. Risk Scoring

  -------------------------------------------------------------------------------
  Risk ID   Description     Probability     Impact    Score     Category
  --------- --------------- --------------- --------- --------- -----------------
  R1        Seller account  4               5         20        Authentication
            credentials                                         
            compromised                                         

  R2        Malicious AMI   3               5         15        Asset Integrity
            uploaded                                            

  R3        Unauthorized    3               4         12        Data
            access to                                           Confidentiality
            bank/tax data                                       

  R4        XSS/CSRF in     2               4         8         AppSec
            portal                                              
  -------------------------------------------------------------------------------

## 5. Mitigations

  -------------------------------------------------------------------------
  Risk ID           Mitigation              Owner           Status
  ----------------- ----------------------- --------------- ---------------
  R1                Enforce MFA, monitor    IT Security     Planned
                    logins, throttling                      

  R2                Malware scanning,       Product         In Progress
                    sandboxing, manual      Security        
                    review                                  

  R3                RBAC, encryption,       Compliance      Planned
                    access monitoring                       

  R4                WAF, code review, pen   DevOps          Open
                    tests                                   
  -------------------------------------------------------------------------

## 6. Risk Register Summary

  --------------------------------------------------------------------------------------------
  Risk ID  Description     Probability   Impact   Score   Mitigation   Owner        Status
  -------- --------------- ------------- -------- ------- ------------ ------------ ----------
  R1       Seller account  4             5        20      MFA +        IT Security  Planned
           compromised                                    monitoring                

  R2       Malicious AMI   3             5        15      Scanning +   Product      In
           upload                                         sandbox      Security     Progress

  R3       Unauthorized    3             4        12      RBAC +       Compliance   Planned
           data access                                    encryption                

  R4       Web app         2             4        8       WAF +        DevOps       Open
           vulnerability                                  reviews                   
  --------------------------------------------------------------------------------------------
