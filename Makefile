.PHONY: help


help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-17s\033[0m %s\n", $$1, $$2}'


prep: ## install all deps
	@echo "[vpn]\nXX.XX.XX.XX" > hosts.ini
	@echo "paste IP address into hosts.ini file"
	brew install ansible
	ansible-galaxy install kyl191.openvpn

run: ## setup vpn server
	ansible-playbook playbook.yml

vpc:
	yc compute instance create --name my-vpn --zone ru-central1-a --ssh-key ~/.ssh/id_ed25519.pub