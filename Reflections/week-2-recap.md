# Week 2 Recap

## Overview

This week was all about building up practical cybersecurity skills and getting more comfortable with the kinds of tools and techniques used in real environments. I spent time learning about vulnerability scanning, network analysis, ethical AI and different types of encryption in the cloud.  

I also worked hands-on with OpenVAS, Wireshark, AWS KMS, S3, EBS and TLS which gave me a much clearer understanding of how these tools actually work in practice. On top of that, I explored AI and data ethics, especially around fairness and transparency, which is becoming more important in things like fraud detection and security analytics.

---

## Key Learning Outcomes

### 1. Vulnerability Scanning – OpenVAS

- Learned how OpenVAS finds issues like outdated software, weak passwords, misconfigurations, and insecure services.  
- Got familiar with NVTs (Network Vulnerability Tests).  
- Practised analysing results and understanding severity ratings.  
- Looked at how scheduled scans help with ongoing security.  
- Saw how the Greenbone Security Assistant works and how scanning can be automated.

### 2. Network Traffic Analysis – Wireshark

- Improved my ability to read and understand packet captures.  
- Spotted insecure traffic like clear-text protocols and exposed credentials.  
- Observed Nmap scans and how they appear in packet data.  
- Practised filtering, session reconstruction, and looking at TLS handshakes.  
- Learned where Wireshark fits into troubleshooting and security investigations.

### 3. Ethical AI in Fraud Detection

- Explored bias, fairness, transparency and GDPR responsibilities when working with AI systems.  
- Read guidance from McKinsey, Oliver Wyman, Brookings and Encord.  
- Looked at ways to reduce unfair outcomes:
  - Using representative training data  
  - Removing sensitive proxies  
  - Checking fairness metrics  
  - Regularly auditing models  
- Understood the importance of involving different teams (data scientists, ethicists, domain experts) and keeping humans involved in decision-making.

### 4. Encryption at Rest & in Transit – AWS Lab

- Worked with S3 encryption (SSE-S3 and SSE-KMS).  
- Looked at EBS default encryption and how permissions affect access.  
- Captured HTTPS/TLS traffic in Wireshark to see how encryption protects data on the wire.  
- Saw how KMS and IAM policies control who can decrypt what.  

### 5. Data Anonymisation & PowerShell Automation

- Built a PowerShell script that anonymises sensitive data using regex patterns.  
- Replaces emails, IP addresses, phone numbers, GUIDs, credit card numbers and more.  
- Preserves timestamps and logs actions.  
- Automatically copies binary files without trying to edit them.  
- Checks for safe UNC paths before copying.  
- This really improved my understanding of regex, error handling and secure scripting practices.

---

## Reflection

This week gave me a much deeper and more practical understanding of how cybersecurity tools fit into a real working environment.

OpenVAS made it clear how easy it is for small vulnerabilities to go unnoticed and why regular scanning is so important. Wireshark helped me actually see what’s happening on a network, both good and bad and made the value of TLS instantly obvious.

The AI ethics research felt different from the technical labs, but it really highlighted how much responsibility there is when using AI for things like fraud detection. Bias and fairness aren’t just theoretical they directly affect people, and it’s important to make sure models are designed and monitored properly.

The AWS encryption lab tied all of these ideas together. I learned how IAM and KMS permissions interact and I got hands-on experience seeing what encrypted vs. unencrypted data looks like in Wireshark.

Finally, writing the PowerShell anonymisation script helped me get better at secure automation and at thinking about data protection from a practical point of view.

Overall, this week helped me build confidence across vulnerability scanning, packet analysis, secure scripting, encryption and ethical AI all skills that translate directly into real-world SBS work.

---

## Next Steps

- Try authenticated OpenVAS scans  
- Deepen Wireshark skills (DNS tunnelling, ARP spoofing, deeper TLS analysis)  
- Create a small case study on preventing AI bias in fraud detection  
- Experiment with automating OpenVAS scans and reporting  
- Expand the PowerShell anonymisation rules for SBS-specific data  
- Continue more AWS security labs (CloudTrail Lake, Security Hub, GuardDuty)  
- Look into continuous monitoring tools like Zeek or Suricata  
- Review NCSC and ICO guidance on ethical AI and data protection  

