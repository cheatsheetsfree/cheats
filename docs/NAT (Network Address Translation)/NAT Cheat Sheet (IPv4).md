**📘 NAT Cheat Sheet (IPv4)**

**🔹 What is NAT?**

NAT (Network Address Translation) allows private IP addresses to
communicate with public networks (like the Internet) by translating
private IPs to a public IP address.

**🔹 Private IPv4 Address Ranges (RFC 1918)**

| **Class** | **Address Range**             | **CIDR**       | **\# of Hosts** |
|-----------|-------------------------------|----------------|-----------------|
| A         | 10.0.0.0 – 10.255.255.255     | 10.0.0.0/8     | ~16 million     |
| B         | 172.16.0.0 – 172.31.255.255   | 172.16.0.0/12  | ~1 million      |
| C         | 192.168.0.0 – 192.168.255.255 | 192.168.0.0/16 | ~65,000         |

**🔹 Types of NAT**

| **Type** | **Description** |
|----|----|
| **SNAT** | **Source NAT** – changes the **source IP** (usually private → public) |
| **DNAT** | **Destination NAT** – changes the **destination IP** (used for port forwarding) |
| **Static NAT** | One-to-one mapping between private and public IPs |
| **Dynamic NAT** | Many-to-many mapping from a private pool to a public pool |
| **PAT** | **Port Address Translation** – many-to-one (NAT Overload); uses ports |

**🔹 How NAT Works (Simplified Example)**

- **Before NAT:**

- 192.168.1.10 → 93.184.216.34 (example.com)

- **After NAT (PAT example):**

- Source IP/Port: 192.168.1.10:54321

- Translated to: 203.0.113.1:40000

- **NAT Table Entry:**

- Inside Local: 192.168.1.10:54321

- Inside Global: 203.0.113.1:40000

**🔹 NAT Terms**

| **Term**           | **Description**                           |
|--------------------|-------------------------------------------|
| **Inside Local**   | Private IP address inside the LAN         |
| **Inside Global**  | Public IP used for outside communication  |
| **Outside Local**  | IP address of external host from LAN view |
| **Outside Global** | Real public IP of external host           |

**🔹 Useful RFCs**

- **RFC 1918** – Private IPv4 Addressing

- **RFC 3022** – Traditional NAT

**🔹 Troubleshooting NAT**

- 🔍 Use tools like traceroute, ipconfig, ifconfig, netstat, or nmap.

- 🔥 Common Issues:

  - NAT table full (PAT overload)

  - Incorrect port forwarding

  - No NAT rule match

Would you like a **PDF version**, **CLI commands for NAT configuration**
(e.g., Cisco or Linux), or a **visual diagram**?

Great! Here's a **quick-reference CLI cheat sheet for configuring NAT on
both Cisco IOS routers and Linux (iptables)**.

**🚀 NAT CLI Commands Cheat Sheet**

**🖧 Cisco IOS NAT Configuration**

**1. Static NAT (1-to-1 Mapping)**

ip nat inside source static 192.168.1.10 203.0.113.10

**2. Dynamic NAT (Many-to-Many Mapping)**

ip nat pool MYPOOL 203.0.113.100 203.0.113.110 netmask 255.255.255.0

ip nat inside source list 1 pool MYPOOL

access-list 1 permit 192.168.1.0 0.0.0.255

**3. PAT (NAT Overload / Many-to-One)**

ip nat inside source list 1 interface GigabitEthernet0/0 overload

access-list 1 permit 192.168.1.0 0.0.0.255

**4. Interface Designation**

interface GigabitEthernet0/0

ip address 203.0.113.1 255.255.255.0

ip nat outside

interface GigabitEthernet0/1

ip address 192.168.1.1 255.255.255.0

ip nat inside

**🐧 Linux NAT (iptables)**

**1. Enable IP Forwarding**

echo 1 \> /proc/sys/net/ipv4/ip_forward

Or persistently via /etc/sysctl.conf:

net.ipv4.ip_forward = 1

**2. Masquerade (PAT / NAT Overload)**

iptables -t nat -A POSTROUTING -o eth0 -s 192.168.1.0/24 -j MASQUERADE

**3. Static Port Forwarding (DNAT)**

\# Forward port 80 from public IP to internal server

iptables -t nat -A PREROUTING -p tcp -d 203.0.113.1 --dport 80 -j DNAT
--to-destination 192.168.1.10:80

**4. SNAT with a Static IP**

iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j SNAT
--to-source 203.0.113.1

**🧹 Clear NAT Rules (Linux)**

iptables -t nat -F


**🖧 1. Cisco IOS (Router/Switch)**

**Interface Setup**

interface Gig0/0

ip address 203.0.113.1 255.255.255.0

ip nat outside

interface Gig0/1

ip address 192.168.1.1 255.255.255.0

ip nat inside

**Static NAT (1:1)**

ip nat inside source static 192.168.1.10 203.0.113.10

**Dynamic NAT**

ip nat pool MYPOOL 203.0.113.100 203.0.113.110 netmask 255.255.255.0

access-list 1 permit 192.168.1.0 0.0.0.255

ip nat inside source list 1 pool MYPOOL

**PAT (Overload)**

access-list 1 permit 192.168.1.0 0.0.0.255

ip nat inside source list 1 interface Gig0/0 overload

**🐧 2. Linux – iptables**

**Enable IP Forwarding**

echo 1 \> /proc/sys/net/ipv4/ip_forward

\# Or add to /etc/sysctl.conf: net.ipv4.ip_forward = 1

**Masquerade (PAT)**

iptables -t nat -A POSTROUTING -o eth0 -s 192.168.1.0/24 -j MASQUERADE

**Static SNAT**

iptables -t nat -A POSTROUTING -o eth0 -s 192.168.1.0/24 \\

-j SNAT --to-source 203.0.113.1

**DNAT / Port Forwarding**

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 \\

-j DNAT --to-destination 192.168.1.10:80

**Clear Rules**

iptables -t nat -F

**🧬 3. Linux – nftables**

**Basic Setup (Masquerade)**

nft add table nat

nft 'add chain nat postrouting { type nat hook postrouting priority 100;
}'

nft add rule nat postrouting oif eth0 masquerade

*Uses dynamic IP on eth0*
([<u>wiki.nftables.org</u>](https://wiki.nftables.org/wiki-nftables/index.php/Performing_Network_Address_Translation_%28NAT%29?utm_source=chatgpt.com))

**SNAT with Static IP**

nft add table nat

nft 'add chain nat postrouting { type nat hook postrouting priority 100;
}'

nft add rule nat postrouting ip saddr 192.168.1.0/24 oif eth0 \\

snat to 203.0.113.1

*Static outgoing IP*

**DNAT / Port Forwarding**

nft add table nat

nft 'add chain nat prerouting { type nat hook prerouting priority -100;
}'

nft 'add chain nat postrouting { type nat hook postrouting priority 100;
}'

nft add rule nat prerouting iifname eth0 tcp dport {80,443} \\

dnat to 192.168.1.10

\# then either masquerade or SNAT on postrouting

nft add rule nat postrouting oif eth0 masquerade

*Set up DNAT + response path*
([<u>docs.redhat.com</u>](https://docs.redhat.com/ko/documentation/red_hat_enterprise_linux/10/html/configuring_firewalls_and_packet_filters/configuring-nat-using-nftables?utm_source=chatgpt.com))

**Port Redirection (Local)**

nft add rule nat prerouting tcp dport 22 redirect to 2222

*Useful for transparent proxies or local services*

**🛡️ 4. Linux – firewalld (RHEL/CentOS/Fedora)**

**Enable/Disable Masquerading**

firewall-cmd --zone=external --add-masquerade

firewall-cmd --zone=external --permanent --add-masquerade

*Dynamic outgoing IP*

**DNAT Forward-Port Example (HTTP)**

firewall-cmd --zone=external \\

--add-forward-port=port=80:proto=tcp:toaddr=192.168.1.10:toport=80 \\

--permanent

firewall-cmd --reload

*Adds HTTPS/HTTP forward-port rules*

**📋 5. Sample Linux IPTables Script**

\#!/bin/bash

\# Enable forwarding

echo 1 \> /proc/sys/net/ipv4/ip_forward

\# Flush existing NAT rules

iptables -t nat -F

\# Masquerade LAN to Internet

iptables -t nat -A POSTROUTING -o eth0 -s 192.168.1.0/24 -j MASQUERADE

\# Forward port 80 to internal web server

iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 \\

-j DNAT --to-destination 192.168.1.10:80

\# Allow forwarding in filter table

iptables -A FORWARD -p tcp -d 192.168.1.10 --dport 80 -j ACCEPT

\# Save rules (Ubuntu/Debian)

iptables-save \> /etc/iptables/rules.v4

**✅ Summary Table**

| **Feature** | **Cisco IOS** | **iptables** | **nftables** | **firewalld** |
|----|----|----|----|----|
| Inside/Outside | ip nat inside/outside | Interface auto | Interface auto | Zone-based (--zone) |
| Masquerade / PAT | overload on interface | -j MASQUERADE | masquerade | --add-masquerade |
| Static SNAT | ip nat inside source static ... | -j SNAT --to-source | snat to \<IP\> | N/A |
| Dynamic NAT | ip nat pool ... | (no direct equivalent) | pool mapping via maps | N/A |
| Port Forward / DNAT | Port forwarding via ACLs | -j DNAT --to-destination | dnat to \<IP\> | --add-forward-port |

Here are two **complete Cisco Packet Tracer lab configuration files**
(.pkt format) you can use directly or adapt for Static, Dynamic, and PAT
NAT setups:

**🟦 Lab 1 – Static NAT**

**Lab file:** 29-1 NAT Configuration.pkt from GitHub
([<u>github.com</u>](https://github.com/janindujm/Static-Nat-configuration?utm_source=chatgpt.com))

**Topology & Details:**

- Router with two interfaces:

  - FastEthernet0/0 – outside

  - FastEthernet0/1 – inside

- Static mapping: 10.0.2.11 → 203.0.113.4 (or sometimes 192.168.1.100 →
  203.0.113.10)
  ([<u>packettracerlab.com</u>](https://www.packettracerlab.com/nat-and-pat-explained-with-configuration-in-packet-tracer/?utm_source=chatgpt.com),
  [<u>github.com</u>](https://github.com/janindujm/Static-Nat-configuration?utm_source=chatgpt.com))

**Configuration steps (in router global config):**

interface FastEthernet0/1

ip address 10.0.2.11 255.255.255.0

ip nat inside

!

interface FastEthernet0/0

ip address 203.0.113.4 255.255.255.0

ip nat outside

!

ip nat inside source static 10.0.2.11 203.0.113.4

Verify with:

show ip nat translations

show ip nat statistics

**🟩 Lab 2 – Dynamic NAT (Pool Mapping)**

**Lab file:** Available on IPCisco

**Topology & Details:**

- Router between private subnet 192.168.15.0/24 and WAN 202.111.222.0/24

- NAT pool: 202.191.2.5–202.191.2.6

**Configuration steps on Router1:**

interface GigabitEthernet0/0

ip address 192.168.15.1 255.255.255.0

ip nat inside

!

interface Serial0/0/0

ip address 202.111.222.10 255.255.255.0

ip nat outside

!

ip nat pool DYNAMIC 202.191.2.5 202.191.2.6 netmask 255.255.255.252

access-list 1 permit 192.168.15.0 0.0.0.255

ip nat inside source list 1 pool DYNAMIC

ip route 0.0.0.0 0.0.0.0 202.111.222.20

Works as confirmed by pings showing Reply from 212.100.100.1…
([<u>hypercube-academy.blogspot.com</u>](https://hypercube-academy.blogspot.com/2022/09/packet-tracer-tutorial-static-and.html?utm_source=chatgpt.com),
[<u>ipcisco.com</u>](https://ipcisco.com/lesson/dynamic-nat-configuration-with-packet-tracer/?utm_source=chatgpt.com)).

**🟨 Lab 3 – PAT (Dynamic NAT Overload)**

**Lab file:** NAT‑and‑PAT‑explained… .pkt

**Topology & Details:**

- Router with internal FastEthernet0/0 and external FastEthernet0/1

- PRIVATE: 192.168.1.0/24, PUBLIC: interface IP

**Configuration steps:**

interface FastEthernet0/0

ip nat inside

!

interface FastEthernet0/1

ip nat outside

!

access-list 1 permit 192.168.1.0 0.0.0.255

ip nat inside source list 1 interface FastEthernet0/1 overload

This sets up NAT overload (many-to-one using PAT).
([<u>packettracerlab.com</u>](https://www.packettracerlab.com/nat-and-pat-explained-with-configuration-in-packet-tracer/?utm_source=chatgpt.com))

**✅ How to Use These .pkt Labs**

1.  Download and open the .pkt file in Cisco Packet Tracer.

2.  Verify interface IP addresses and NAT settings on the router.

3.  Simulate traffic (e.g., pings, HTTP tests) from private hosts.

4.  On the router, verify translations with:

5.  show ip nat translations

6.  show ip nat statistics

**📥 Download Links**

You can locate and grab each .pkt lab file here:

- **Static NAT**: 29-1 NAT Configuration.pkt at GitHub
  ([<u>github.com</u>](https://github.com/janindujm/Static-Nat-configuration?utm_source=chatgpt.com),
  [<u>wboyditprofessional.com</u>](https://wboyditprofessional.com/cisco-packet-tracer-nat-and-access-control-lists/?utm_source=chatgpt.com))

- **Dynamic NAT**: Lab file available via IPCisco article
  ([<u>ipcisco.com</u>](https://ipcisco.com/lesson/dynamic-nat-configuration-with-packet-tracer/?utm_source=chatgpt.com))

- **PAT (Overload)**: Provided in the IPCisco/PktTracer NAT & PAT lesson
  ([<u>packettracerlab.com</u>](https://www.packettracerlab.com/nat-and-pat-explained-with-configuration-in-packet-tracer/?utm_source=chatgpt.com))


