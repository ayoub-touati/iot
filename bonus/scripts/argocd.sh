DIR=$PWD

# #NOTE: deploying argocd

#ISSUE: pottential issue: we might need to wait for gitlab to be ready before deploying argocd??
sudo kubectl apply -f ${DIR}/confs/argocd-conf.yml
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
# #NOTE: deploying application ressource with argocd which would automate wil42 deployment and CI
sudo kubectl apply -f ${DIR}/confs/desired-state.yml
