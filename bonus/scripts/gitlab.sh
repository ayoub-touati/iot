DIR="/home/dumbledoor/Desktop/mynixbox/bonus"

sudo kubectl create namespace gitlab
sudo helm repo add gitlab https://charts.gitlab.io/
sudo helm repo update
sudo helm upgrade --install gitlab gitlab/gitlab \
  --namespace gitlab \
  --timeout 600s \
  --set global.hosts.domain=example.com \
  --set global.hosts.externalIP=172.18.0.2 \
  --set certmanager-issuer.email=me@example.com \
  --set global.edition=ce \
  # Core components - minimum configuration
\
  # Disable unnecessary components
\
  --set gitlab-runner.install=false \
  --set gitlab.gitlab-shell.enabled=false \
  --set gitlab.sidekiq.enabled=false \
  --set gitlab.unicorn.enabled=false \
  --set gitlab.toolbox.enabled=false \
  --set prometheus.enabled=false \
  --set registry.enabled=false \
  --set global.minio.enabled=false \
  --set gitlab.kas.enabled=false
  # Disable TLS-related components
# \
#   --set certmanager.enabled=false \
#   --set certmanager-issuer.enabled=false \
