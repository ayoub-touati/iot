echo "192.168.56.110 app1.com app2.com app3.com" >> /etc/hosts
apt-get update -y
apt-get install -y curl
curl -sfL https://get.k3s.io | sh -s - --node-external-ip=192.168.56.110
