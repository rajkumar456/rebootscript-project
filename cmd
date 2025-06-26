ansible-playbook -i "10.1.1.100,10.1.1.101,10.1.1.102," playbooks/linux_server_prechecks_complete.yml \
  -e "email_from=reports@yourcompany.com" \
  -e "email_to=admin@yourcompany.com"




TASK [Generate minimal patching report file on control node] ****************************************************************************************************************************************************************************************************************************************************************
fatal: [10.65.17.24]: FAILED! => {"msg": "The 'failed' test expects a dictionary"}
        to retry, use: --limit @/home/ebrodie/ansible/patchingoci2.retry
