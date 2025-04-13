sudo apt-get update -y
sudo apt-get install -y curl
until [ -f /vagrant/k3s-token.txt ]; do sleep 1; done
K3S_TOKEN=$(grep "K3S_TOKEN" /vagrant/k3s-token.txt | cut -d " " -f 2)
sudo curl -sfL https://get.k3s.io | sh -s - agent --server=https://192.168.56.110:6443 --token=$K3S_TOKEN --node-ip=192.168.56.111
