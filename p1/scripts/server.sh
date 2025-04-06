sudo apt-get update -y
sudo apt-get install -y curl
sudo curl -sfL https://get.k3s.io | sh -
echo "K3S_TOKEN: $(sudo cat /var/lib/rancher/k3s/server/node-token)" > /vagrant/k3s-token.txt
echo "alias k='sudo kubectl'" >> .bashrc
source .bashrc
