# Web Infrastructure - Load Balancer

This project contains automated Bash scripts for configuring Nginx web servers with custom response headers and setting up HAProxy as a load balancer on Ubuntu.

## Tasks
* **0-custom_http_response_header**: Automates the installation and configuration of Nginx to include a custom `X-Served-By` header displaying the server's hostname.
* **1-install_load_balancer**: Automates the installation and configuration of HAProxy to distribute incoming traffic across multiple web servers using a round-robin algorithm.
