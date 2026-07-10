# Firewall Configuration Task

This repository contains solutions for the Web Infrastructure project. 
The focus of this specific task is securing server infrastructure using UFW 
(Uncomplicated Firewall).

## Task 0: Block all incoming traffic but...
**Objective:** Configure `ufw` to deny all incoming traffic by default, while 
explicitly allowing necessary services to maintain server accessibility.

### Rules Implemented:
- **Default Policy:** Deny incoming, Allow outgoing.
- **Allowed Ports:**
  - `22/tcp` (SSH)
  - `80/tcp` (HTTP)
  - `443/tcp` (HTTPS)

### How to use:
1. Ensure `ufw` is installed: `sudo apt-get install -y ufw`
2. Run the script: `./0-block_all_incoming_traffic_but`
3. Verify status: `sudo ufw status verbose`

---
*Project: ALU System Engineering - DevOps*
*Author: honore kamana