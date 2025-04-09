DIR=/home/dumbledoor/Desktop/iot/bonus

.PHONY: all clean

# Default target (runs when you just type 'make')
all: cluster argocd gitlab

# Run cluster.sh
cluster:
	@echo "Running cluster.sh..."
	sudo k3d cluster create --config ${DIR}/conf/k3d-cluster.yml

argocd:
	@echo "Running argocd.sh..."
	chmod +x ${DIR}/scripts/argocd.sh
	"$(DIR)/scripts/argocd.sh"
argopass:
	@echo "user: admin, password: -->"
	sudo kubectl -n argocd get secret argocd-initial-admin-secret \
          -o jsonpath="{.data.password}" | base64 -d; echo

# Run gitlab.sh
gitlab:
	@echo "Running gitlab.sh..."
	chmod +x ${DIR}/scripts/gitlab.sh
	"$(DIR)/scripts/gitlab.sh"
	@echo "user: root, password: -->"
	sudo kubectl get secret -n gitlab gitlab-gitlab-initial-root-password -o jsonpath='{.data.password}' | base64 --decode

gitpass:
	@echo "user: root, password: -->"
	sudo kubectl get secret -n gitlab gitlab-gitlab-initial-root-password -o jsonpath='{.data.password}' | base64 --decode

# Clean target (optional)
clean:
	@echo "Cleaning up..."
	# Add any cleanup commands here
