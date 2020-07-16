# go-environment-setup
 Setup a development environment system for Golang development, with ansible

## Instructions
This ansible need a password for sudoing.

Set the user password in `group_vars/vault.source.yml`:
```
cp group_vars/vault.source.yml.example group_vars/vault.source.yml
```

Run the playbook:
```
make
```
