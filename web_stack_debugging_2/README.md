# Web Stack Debugging #2

This project focuses on debugging and fixing issues in a web stack environment using Bash scripts.

## Requirements
- Ubuntu 14.04 LTS
- All Bash scripts must be executable
- Scripts must pass Shellcheck without errors
- All scripts must start with:
  #!/usr/bin/env bash

## Tasks

### 0. Run software as another user
Script: 0-iamsomeoneelse

This script runs the `whoami` command as the user passed as an argument.

Example:
./0-iamsomeoneelse www-data

Output:
www-data

---

### 1. Run Nginx as nginx
Script: 1-run_nginx_as_nginx

This script configures Nginx to:
- run as the nginx user
- listen on port 8080
- listen on all active IP addresses

---

### 2. Fix in 7 lines or less
Script: 100-fix_in_7_lines_or_less

A shorter version of the previous fix with:
- maximum 7 lines
- no use of `;`
- no use of `&&`
- no use of `wget`

---

## Repository

GitHub repository: alu-system_engineering-devops  
Directory: web_stack_debugging_2