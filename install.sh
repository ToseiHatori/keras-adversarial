#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y language-pack-ja
sudo apt-get install -y git tmux

sudo apt-get install -yq wget build-essential gcc zlib1g-dev libssl-dev libsqlite3-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"\n
fi
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'test -r ~/.bashrc && . ~/.bashrc' >> ~/.bash_profile


git clone https://github.com/pyenv/pyenv.git ~/.pyenv
pyenv install 3.6.5 && pyenv global 3.6.5 && pyenv rehash

pip install pipenv keras==2.1.2 tensorflow-gpu pandas numpy matplotlib
