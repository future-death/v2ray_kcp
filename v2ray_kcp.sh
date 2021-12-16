#! /bin/bash
vi config.json
touch /var/log/v2ray/access.log /var/log/v2ray/error.log
mkdir /usr/local/etc/v2ray /usr/local/bin /var/log/v2ray
mv /root/v2ray-linux-64/config.json /usr/local/etc/v2ray
mv /root/v2ray-linux-64/v2ray /usr/local/bin
mv /root/v2ray-linux-64/v2ctl /usr/local/bin
mv /root/v2ray-linux-64/geoip.dat /usr/local/bin
mv /root/v2ray-linux-64/geosite.dat /usr/local/bin
mv /root/v2ray-linux-64/systemd/system/v2ray.service /etc/systemd/system
systemctl enable v2ray
systemctl start v2ray
