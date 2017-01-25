## Automated setup after fresh install (prepared on Ubuntu 16.04)

# get this repo.
git clone https://github.com/iramusa/utils

# install basic tools and set them up
sudo ./basic_tools.sh

# generate ssh key template and copy over from https://lastpass.com/
mkdir ~/.ssh
# copy private key then
xclip -o | tee ~/.ssh/id_rsa
chmod 400 ~/.ssh/id_rsa
# copy public key then
xclip -o | tee ~/.ssh/id_rsa.pub

# start the ssh-agent in the background
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Test ssh
ssh -T git@github.com

# install python basics
sudo apt install ipython python-dev python3-dev python-pip
pip install --upgrade pip
sudo -H pip install virtualenv
sudo -H pip install virtualenvwrapper

# setup envs
./setup_envs

# setup flexi python env
./setup_flexi

# setup nixnote

# setup tor, tor browser

# setup multibit hd
