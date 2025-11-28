# Web Stack Debugging #2

This project focuses on debugging and configuring web stack components inside Docker containers.  
You will fix permission issues, run processes as non-root users, and adjust Nginx configuration.

## Requirements
- All scripts are written for Ubuntu 14.04 LTS.
- All Bash scripts must:
  - Pass Shellcheck with no errors.
  - Start with `#!/usr/bin/env bash`.
  - Contain a comment on the second line explaining the script purpose.
  - Be executable.

## Files

### 0-iamsomeoneelse
A Bash script that accepts a username as an argument and runs the `whoami` command as that user using `sudo -u`.

### 1-run_nginx_as_nginx
Fixes Nginx so that:
- It runs as the `nginx` user instead of `root`.
- It listens on port **8080** on all interfaces.

### 100-fix_in_7_lines_or_less
A shorter version of task #1.  
It configures Nginx to run as the `nginx` user and listen on port **8080`, written in 7 lines or fewer.

## Usage

Make scripts executable:
```bash
chmod +x 0-iamsomeoneelse
chmod +x 1-run_nginx_as_nginx
chmod +x 100-fix_in_7_lines_or_less
