ansible-playbook -i "10.1.1.100,10.1.1.101,10.1.1.102," playbooks/linux_server_prechecks_complete.yml \
  -e "email_from=reports@yourcompany.com" \
  -e "email_to=admin@yourcompany.com"
