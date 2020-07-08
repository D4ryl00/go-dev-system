VAULT_PASSWORD_FILE=.vault_password
VAULT_SOURCE_FILE=group_vars/vault.source.yml
VAULT_GENERATE=group_vars/vault.yml

.PHONY: all
all: run

.PHONY: run
run: generate
	ansible-playbook -i hosts --vault-password-file $(VAULT_PASSWORD_FILE) site.yml

.PHONY: generate
generate: $(VAULT_GENERATE)

$(VAULT_GENERATE): $(VAULT_PASSWORD_FILE)
	ansible-vault encrypt --vault-password-file $(VAULT_PASSWORD_FILE) --output $(VAULT_GENERATE) $(VAULT_SOURCE_FILE)

$(VAULT_PASSWORD_FILE):
	date +%s | sha256sum | base64 | head -c 32 > $(VAULT_PASSWORD_FILE)
