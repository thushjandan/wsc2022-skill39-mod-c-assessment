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
* c1_2 - nftables: Packet filtering
* c1_3 - nftables: trusted list
* c1_4 - nftables: Rules persist across reboots
* c1_5 - DNS: Primary/Master DNS server
* c1_6 - DNS: Secondary/Slave DNS servers
* c1_7 - DNS: A records in zone applix.com
* c1_8 - DNS: intranet.applix.com resolves to 10.22.0.51
* c1_9 - DNS: DNS server configured on Linux servers
* c1_10 - DNS: DNS suffix applix.com is configured
* c1_11 - Web: Webserver listen on port defined in the variable webport
* c1_12 - Web: Textcolor is used
* c1_13 - Web: http://intranet.applix.com is reachable
* c1_14 - HA: VRRP master
* c1_15 - HA: Floating IP is configured
* c1_16 - HA: Keepalived is secured with password authentication
* c1_17 - HA: X-HAPROXY-HOST HTTP header (case insensitive)
* c1_18 - Users: User from CSV file imported
* c1_19 - Users: Password is not overwritten
* c1_20 - File Share: lvm volume created with defined name and size
* c1_21 - File Share: logical volume mounted to /nfs/{sharename}
* c1_22 - File Share: share only accessible from HOST VM
* c1_23 - DNS backup: systemd service exists
* c1_24 - DNS backup: systemd timer configured
* c1_25 - DNS backup: backup exists

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
* c3_2 - Network: Configuration saved
* c3_3 - Security: Management interface secured by ACL
* c3_4 - Network: Loopback interface configured
* c3_5 - Routing: Reachability of loopback of internal & edge routers
* c3_6 - IGP Protocol
* c3_7 - BGP: Loopback 0 is used for iBGP peering
* c3_8 - BGP: Loopback 1 is advertised on external routers
* c3_9 - BGP: Full mesh eBGP peerings with password authentication
* c3_10 - BGP: Max-path is greater than 1
* c3_11 - Routing: Loopback 1 of external routers is reachable
* c3_12 - Folder /data/cisco/backup contains config backups
* c3_13 - Folder /data/cisco/backup is a git repository

### API
* Reachability https://api.applix.com
* c4_1 - systemd service applix-api is running
* c4_2 - Endpoint GET /network/devices/stats
* c4_3 - Endpoint GET /network/devices/stats - filter by management IP
* c4_4 - Endpoint PUT /customers/ - Trigger customer deployment
* c4_4_test - Endpoint PUT /customers/ - Print the customers.json file. Can be used in case the previous test fails.
* c4_5 - Endpoint PUT /customers/ - Ansible playbook started
* c4_6 - Endpoint PUT /customers/ - DNS records and OU exists
* c4_7 - Endpoint PUT /customers/ - Website