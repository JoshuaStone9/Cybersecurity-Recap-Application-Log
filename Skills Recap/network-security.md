# Network Security (Recap & Application)

## Overview
Network security focuses on protecting data, services, and devices as they move across interconnected systems.  
It ensures confidentiality, integrity, and availability (the **CIA triad**) of communications across local, cloud, and hybrid environments.  
Strong network security forms the backbone of all cybersecurity operations — preventing unauthorised access, disruption, and data leakage.

## Core Skills Recapped
Throughout my degree and ongoing practice, I have strengthened and refreshed skills in:
- **Network Design & Topology:** Understanding how segmentation, VLANs, and firewalls isolate sensitive systems.  
- **Firewall & Access Control Management:** Configuring and testing ACLs, NAT, and security zones.  
- **Intrusion Detection & Prevention:** Using IDS/IPS systems (Snort, Suricata) to monitor and alert on suspicious traffic.  
- **VPNs & Secure Tunnelling:** Implementing site-to-site and remote-access VPNs with strong encryption (IPSec, SSL).  
- **Wireshark Analysis:** Capturing and analysing packets to identify anomalies, unencrypted traffic, or misconfigurations.  
- **Zero Trust & Defence in Depth:** Applying layered security strategies to reduce attack surfaces.  

## Tools Used
- **Wireshark** – Packet analysis and network troubleshooting.  
- **pfSense / Cisco Packet Tracer** – Firewall and network topology simulation.  
- **Nmap** – Network discovery and port auditing.  
- **Snort / Suricata** – Intrusion detection and alerting.  
- **AWS VPC Tools** – Security groups, NACLs, and flow logs for cloud-based networking.  
- **OpenVPN / WireGuard** – Secure tunnelling practice.

## Practical Application / Lab Work
- Designed a segmented virtual network lab using **pfSense** and **Kali Linux** to simulate DMZ and internal LAN zones.  
- Analysed packet captures with **Wireshark** to identify plaintext credentials and replayed attacks in a safe lab environment.  
- Configured **Snort** rules to detect common scanning and brute-force attempts.  
- Set up **VPN connections** between virtual networks to test encryption and latency.  
- Conducted mini case study comparing on-prem vs. AWS network security controls (VPCs, Security Groups, NACLs).

## SBS Relevance
For **SBS Insurance Services**, network security is vital because:
- Claims data and customer communications traverse **cloud and internal networks** that must remain secure.  
- Proper **segmentation** prevents lateral movement in case of compromise.  
- **Firewalls and intrusion detection** safeguard customer portals and backend systems.  
- **VPNs and encrypted communications** protect remote staff and third-party access (e.g., insurers, partners).  
- Continuous monitoring ensures **data integrity and compliance** with **GDPR** and **ISO 27001** standards.

## Reflection
Revisiting these concepts reinforced the importance of designing secure networks from the ground up rather than treating them as an afterthought.  
I’ve developed a stronger appreciation for:
- The balance between performance and protection.  
- The need for visibility through logging and monitoring.  
- How misconfigurations (e.g., open ports, weak ACLs) often pose more risk than sophisticated exploits.

## Next Steps
-  Build an advanced IDS/IPS lab with Snort and Security Onion.  
-  Complete TryHackMe’s “Network Security” and “Defensive Security” learning paths.  
-  Learn more about AWS network security auditing tools (GuardDuty, VPC Flow Logs).  
-  Study Zero Trust network architecture principles and deployment examples.
