dnf module disable redis -y
dnf module enable redis:7 -y

sed -e 's/127.0.0.1/0.0.0.0/' -e '/protected-mode/ c protected-mode no' /etc/redis/redis.conf

dnf install redis -y
systemctl enable redis
systemctl start redis