.PHONY: all
all: install

.PHONY: install
install:
	ansible-playbook -i hosts setup.yml
