# kind-cluster
## Configure nameserver in ubuntu 22.04
```bash
# sudo vi /etc/systemd/resolved.conf.d/dns_servers.conf
[Resolve]
DNS=192.168.3.10 8.8.8.8
```