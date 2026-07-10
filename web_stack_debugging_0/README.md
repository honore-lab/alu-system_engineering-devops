# Web Stack Debugging #0

This project focuses on identifying and fixing common web stack misconfigurations. 
The goal is to ensure the Apache web server is running and serving "Hello Holberton".

## Task 0: Give me a page!
**Problem Identified:**
- The Apache web server was failing to start due to a port conflict (port 80 was already occupied).
- The default index page was missing the required string "Hello Holberton".

**Solution:**
- Created a Bash script (`0-give_me_a_page`) that:
    1. Installs Apache2.
    2. Identifies and clears any process occupying port 80.
    3. Restarts the Apache service.
    4. Updates the content of `/var/www/html/index.html` to "Hello Holberton".

**How to use:**
1. Make the script executable: `chmod +x 0-give_me_a_page`
2. Run the script: `./0-give_me_a_page`
3. Verify: `curl -s localhost` should return "Hello Holberton".
