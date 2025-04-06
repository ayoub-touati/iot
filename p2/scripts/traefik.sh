echo "Waiting for Traefik to get an external IP..."
while [ -z "$(kubectl get svc traefik -n kube-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}')" ]; do
  echo "Still waiting..."
  sleep 5
done
echo "Traefik is now ready!"
