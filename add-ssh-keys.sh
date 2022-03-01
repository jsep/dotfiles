# #!/usr/bin/env bash
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

mkdir -p ~/.ssh
mv ~/Downloads/id_rsa* ~/.ssh/
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
