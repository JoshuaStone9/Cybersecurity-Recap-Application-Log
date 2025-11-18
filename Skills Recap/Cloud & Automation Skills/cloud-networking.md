# Cloud Networking (Recap & Application)

## Overview
Cloud networking in AWS ensures secure, reliable, and scalable connectivity between cloud and on-premise environments.  
It supports hybrid architectures and enforces segmentation for defence in depth.

## Core Skills Recapped
- **VPC Design:** Subnets, routing tables, and NAT gateways.  
- **Security Groups vs NACLs:** Layered network control.  
- **PrivateLink / Transit Gateway:** Secure connectivity between environments.  
- **DNS Management:** Using Route 53 for internal and external resolution.  
- **Load Balancing:** AWS ALB/NLB configurations for high availability.  
- **Monitoring Traffic:** Using VPC Flow Logs and CloudWatch metrics.

## Tools To Be Used
- **AWS VPC / Route 53 / CloudWatch** – Core networking services.  
- **AWS CLI** – Configuration and testing.  
- **Wireshark / Nmap** – Packet and port testing tools.  
- **Terraform** – Automated VPC deployment.

## Practical Application / Lab Work
- Built a secure multi-subnet VPC with public and private zones.  
- Configured NACLs to isolate workloads.  
- Tested inbound/outbound rules and logged traffic with VPC Flow Logs.  
- Connected local network via a simulated VPN tunnel.

## SBS Relevance
For SBS’s AWS-based infrastructure, secure networking ensures:  
- Controlled access to customer-facing portals.  
- Segmentation between development and production systems.  
- Secure partner integration with insurer APIs.

## Reflection
Revisiting AWS networking reinforced how architecture defines security.  
Misconfigured routes or public IPs can expose entire workloads.

## Next Steps
- ✅ Practise Transit Gateway setup and peering.  
- ✅ Study AWS Network Firewall.  
- ✅ Learn hybrid networking with Direct Connect and VPNs.
