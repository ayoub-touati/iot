sudo kubectl create namespace gitlab
sudo helm repo add gitlab https://charts.gitlab.io/
sudo helm repo update
sudo helm upgrade --install gitlab gitlab/gitlab \
  --namespace gitlab \
  --timeout 600s \
  --set global.hosts.domain=example.com \
  --set global.hosts.externalIP=172.18.0.2 \
  --set certmanager-issuer.email=me@example.com \
  --set gitlab-runner.install=false \
  --set gitlab.gitlab-shell.enabled=false \
  --set gitlab.sidekiq.enabled=false \
  --set gitlab.toolbox.enabled=false \
  --set prometheus.install=false \
  --set registry.enabled=false \
  --set global.minio.enabled=false \
  --set gitlab.kas.enabled=false \
  --set global.appConfig.defaultProjectsFeatures.builds=false \
  --set global.appConfig.defaultProjectsFeatures.container_registry=false \
  --set global.appConfig.defaultProjectsFeatures.wiki=false \
  --set global.appConfig.defaultProjectsFeatures.snippets=false \
  --set global.appConfig.defaultProjectsFeatures.pages=false \
  --set global.appConfig.artifacts.enabled=false \
  --set global.appConfig.lfs.enabled=false \
  --set global.appConfig.uploads.enabled=false \
  --set global.appConfig.packages.enabled=false
  # --set global.edition=ce \
