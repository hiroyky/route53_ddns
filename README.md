# route53_ddns
Script to set own global IP address to domain managed by Route53

## DDNS as Route53

### For A and AAAA Record (IPv4 and IPv6)
The script `set_ipv4_ipv6.sh` updates A, AAAA record on AWSRoute53.
I recommend set cron for regular execution like below.

Please check YOUR_HOST_ZONE_ID on AWS Route53 console.

```
$ crontab -e
*/15 * * * * /home/user/bin/set_ipv4_ipv6.sh your_domain1.com YOUR_HOST_ZONE_ID1 > /home/user/.log/crontab 2>&1
*/15 * * * * /home/user/bin/set_ipv4_ipv6.sh your_domain2.com YOUR_HOST_ZONE_ID2 > /home/user/.log/crontab 2>&1
```

### For ARecord (IPv4)

The script `set_ipv4.sh` updates A record on AWSRoute53.
I recommend set cron for regular execution like below.

Please check YOUR_HOST_ZONE_ID on AWS Route53 console.

```
$ crontab -e
*/15 * * * * /home/user/bin/set_ipv4.sh your_domain1.com YOUR_HOST_ZONE_ID1 > /home/user/.log/crontab 2>&1
*/15 * * * * /home/user/bin/set_ipv4.sh your_domain2.com YOUR_HOST_ZONE_ID2 > /home/user/.log/crontab 2>&1
```
