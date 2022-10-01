# Marking playbooks for WorldSkills Special Edition 2022 - Module C
## Requirements
* /etc/ansible/hosts available
* /etc/ansible/.vault_pass available

## Execute
### Part 1 - Linux
```bash
# Mark all the linux aspects
ansible-playbook ma-1-linux.yml
# Mark only a particular aspect
ansible-playbook ma-1-linux.yml -t c1_1
```
### Part 2 - Windows
```bash
# Mark all the windows aspects
ansible-playbook ma-2-windows.yml
# Mark only a particular aspect
ansible-playbook ma-2-windows.yml -t c2_1
```
### Part 3 - Networking
```bash
# Mark all the networking aspects
ansible-playbook ma-3-cisco.yml
# Mark only a particular aspect
ansible-playbook ma-3-cisco.yml -t c3_1
```
### Part 4 - API
```bash
# Mark all the API aspects
ansible-playbook ma-4-api.yml
# Mark only a particular aspect
ansible-playbook ma-4-api.yml -t c4_1
```
### Part 5 - Monitoring
```bash
# Mark all the monitoring aspects
ansible-playbook ma-5-monitoring.yml
# Mark only a particular aspect
ansible-playbook ma-5-monitoring.yml -t c5_1
```

## Aspects
### Linux
* c1_1 - Linux: Hostname
* c1_2 - iptables: Packet filtering
* c1_3 - iptables: Rules persist across reboots
* c1_4 - DNS: Primary/Master DNS server
* c1_5 - DNS: Secondary/Slave DNS servers
* c1_6 - DNS: A records in zone applix.com
* c1_7 - DNS: intranet.applix.com resolves to 10.22.0.51
* c1_8 - DNS: DNS server configured on Linux servers
* c1_9 - DNS: DNS suffix applix.com is configured
* c1_10 - Web: Webserver listen on port defined in the variable webport
* c1_11 - Web: Textcolor is used
* c1_12 - Web: http://intranet.applix.com is reachable
* c1_13 - HA: VRRP master
* c1_14 - HA: Floating IP is configured
* c1_15 - HA: Keepalived is secured with password authentication
* c1_16 - HA: X-HAPROXY-HOST HTTP header (case insensitive)
* c1_17 - Users: User from CSV file imported
* c1_18 - Users: Password is not overwritten

### Windows
* c2_1 - Windows: Hostname
* c2_2 - Root certificate exists
* c2_3 - Private key of the root certificate exists in certificate store
* c2_4 - Security: RDP service
* c2_5 - Security: Uptime logging
* c2_6 - Tools: Telnet client
* c2_7 - AD: AD domain customers.com
* c2_8 - AD: WIN hosts are joined to domain customer.com

### Network
* c3_1 - Network: Hostname
* c3_2 - Security: Management interface secured by ACL
* c3_3 - Network: Loopback interface configured
* c3_4 - Routing: Reachability of loopback of internal & edge routers
* c3_5 - BGP: Loopback 0 is used for iBGP peering
* c3_6 - BGP: Loopback 1 is advertised on external routers
* c3_7 - BGP: Full mesh eBGP peerings with password authentication
* c3_8 - BGP: Max-path is greater than 1
* c3_9 - Routing: Loopback 1 of external routers is reachable
* c3_10 - Folder /data/cisco/backup contains config backups
* c3_11 - Folder /data/cisco/backup is a git repository

### API
* Reachability https://api.applix.com
* c4_1 - systemd service applix-api is running
* c4_2 - Endpoint /stats
* c4_3 - Endpoint /login
* c4_4 - Fail2ban
* c4_5 - Endpoint /logout
* c4_6 - Endpoint GET /network/devices/stats
* c4_7 - Endpoint GET /network/devices/stats - filter by management IP
* c4_8 - Endpoint GET /network/devices/bgp
* c4_9 - Endpoint GET /network/devices/bgp – filter by management IP
* c4_10 - Endpoint GET /network/devices/routes
* c4_11 - Endpoint GET /network/devices/routes – filter by management IP
* c4_12 - Endpoint PUT /network/loopback
* c4_13 - Endpoint DELETE /network/loopback
* c4_14 - Endpoint PUT /customers/ - Trigger customer deployment
* c4_15 - Endpoint PUT /customers/ - New customer onboarded
* c4_16 - Endpoint /healthz

### Monitoring
* c5_1 - MariaDB Galera cluster & database
* c5_2 - All hosts are monitored with ICMP
* c5_3 - The API is monitored
