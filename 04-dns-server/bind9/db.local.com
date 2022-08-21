$TTL    604800
@       IN      SOA     dns1.local.com. root.local.com. (
                  1     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
@                         IN      NS      dns1.local.com.
;
dns1.local.com.           IN      A      192.168.3.10
*.kubernetes.local.com.   IN      A      172.18.255.200
