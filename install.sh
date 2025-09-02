#!/usr/bin/env sh

mkdir -p ~/repos

link_to_synced_repo_and_install() {
  local repo=$1
  if [ -L ~/repos/${repo} ]; then
    echo "${repo} is already linked"
  else
    echo "Pointing ~/repos/$repo to ~/Dropbox/synced_repos/$repo"
    ln -s ~/Dropbox/synced_repos/$repo ~/repos/$repo
  fi
  cd ~/repos/${repo}
  if [ -f install.sh ]; then
    ./install.sh
  fi
  cd ..
}

configure_environment() {
  if [ -d ~/Dropbox/synced_repos ]; then
    link_to_synced_repo_and_install config-alacritty
    link_to_synced_repo_and_install config-lazygit
    link_to_synced_repo_and_install config-nvim
    link_to_synced_repo_and_install config-tmux
    link_to_synced_repo_and_install config-zsh
    link_to_synced_repo_and_install utils
  else
    echo "Dropbox has not been fully installed yet"
  fi
}

generate_github_ssh_key() {
  echo "Let's generate an SSH key for GitHub"
  ssh-keygen -t ed25519 -C "jason.d.chambers@gmail.com"
  echo "Now copy/paste the following into a new SSH key at https://github.com/settings/keys"
  cat ~/.ssh/id_ed25519.pub | pbcopy
  cat ~/.ssh/id_ed25519.pub
}

fix_macos_scrolling() {
  defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
}

main() {
  configure_environment
  generate_github_ssh_key
  fix_macos_scrolling
}

main
