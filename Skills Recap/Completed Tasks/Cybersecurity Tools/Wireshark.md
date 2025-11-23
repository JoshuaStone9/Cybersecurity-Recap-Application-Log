# Wireshark - Network Protocol Analyzer

## Overview
Wireshark is a free tool that lets you watch and understand what's happening on a network. It captures real-time traffic so you can see what devices are doing, which apps are talking, and how data is moving. It’s super useful for anyone who wants to troubleshoot network issues or dig into how things work behind the scenes.

## What It Does

### Vulnerability Scanning
Wireshark isn’t a vulnerability scanner, but it can **help you spot security problems** by showing things like:
- Passwords or data being sent without encryption  
- Old or insecure protocols being used  
- Weird or suspicious traffic  
- Packets that look like someone’s trying to break in  

It’s basically a visibility tool that helps you *find* issues, even if it doesn't scan for them automatically.

### Network & Port Scanning
Wireshark doesn’t scan ports itself, but it can **catch and show scanning activity** from you or anyone else on the network. This includes:
- Nmap scans  
- Ping sweeps  
- OS fingerprint attempts  
- Traffic from anyone trying to see what’s open on a device  

You get to see every packet of the scan in detail.

### Security Assessment
Wireshark helps with security checks by letting you:
- Look closely at how devices and apps are communicating  
- Spot weird or suspicious packets  
- Check encryption and TLS details  
- See unknown devices talking on the network  
- Rebuild and review whole sessions or conversations  

It’s great for pen-testing, learning and investigating issues.

### Reporting
Wireshark makes it easy to share what you find by letting you:
- Export captured data in different formats  
- Create quick traffic or protocol breakdowns  
- Generate graphs that show traffic over time  
- Save and share specific packets or full captures  

Perfect for showing someone exactly what’s going on.

### Continuous Monitoring
Wireshark isn’t meant to run 24/7, but you can use it for longer captures by:
- Running **tshark** (its command-line version)  
- Writing simple scripts to filter or watch for certain traffic  
- Keeping a live capture running while you troubleshoot  

For true always-on monitoring, you’d use other tools, but Wireshark fits into the process really well.

### Integration
Wireshark works nicely with:
- **Tshark** for scripting or automated captures  
- Tools like Zeek, Suricata, or SIEM systems that use PCAP files  
- Firewalls and packet capture devices  
- Vulnerability scanners (to analyze the traffic they generate)  
- Custom scripts written in Lua  

Since it can read almost any packet capture format, it plays well with a lot of network and security tools.
