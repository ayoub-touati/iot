#NOTE: modify this path
DIR=$PWD

sudo kubectl apply -f ${DIR}/confs/argocd-conf.yml
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# #NOTE: deploying application ressource with argocd which would automate wil42 deployment and CI
sudo kubectl apply -f ${DIR}/confs/desired-state.yml
