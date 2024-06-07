#!/usr/bin/env bash

create_sshkey() {
    if [ ! -f ~/.ssh/id_ed25519.pub ]; then
        echo "SSH Keypair does not exist - let's create one"
        echo "Please enter your email address: "
        read -r EMAIL_ADDRESS
        ssh-keygen -t ed25519 -C "${EMAIL_ADDRESS}"
    fi
}

ensure_sshkey_is_registered_with_github() {
    echo "Add the SSH key in GitHub: "
    cat ~/.ssh/id_ed25519.pub
    echo "Press enter to confirm: "
    read -r x
}

create_sshkey
ensure_sshkey_is_registered_with_github
ansible-playbook --connection=local --inventory 127.0.0.1, playbook-clone-repos.yml
