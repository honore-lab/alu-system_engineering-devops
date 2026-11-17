# ssh

Project on SSH: connecting to a remote server with an RSA key pair.

| File | Description |
|------|-------------|
| `0-use_a_private_key` | Connects to the server as `ubuntu` using `~/.ssh/school` |
| `1-create_ssh_key_pair` | Creates a 4096-bit RSA key pair `school` with passphrase `betty` |
| `2-ssh_config` | SSH client config: use `~/.ssh/school`, refuse password auth |
| `100-puppet_ssh_config.pp` | Puppet manifest applying the same client configuration |

## Author
honore-lab
