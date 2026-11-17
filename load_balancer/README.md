# load_balancer

Load balancer project: two nginx web servers behind an HAproxy load balancer.

| File | Description |
|------|-------------|
| `0-custom_http_response_header` | Configures nginx with an `X-Served-By` header set to the hostname |
| `1-install_load_balancer` | Installs HAproxy and round-robins traffic to web-01 and web-02 |

## Author
honore-lab
