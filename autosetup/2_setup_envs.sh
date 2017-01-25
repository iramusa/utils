# git clone https://github.com/iramusa/utils

CODE=~/code
WORKON_HOME=$CODE/envs
PROJECT_HOME=$CODE/projects
SOFTWARE=~/software

mkdir -p $WORKON_HOME
mkdir -p $PROJECT_HOME
mkdir -p $SOFTWARE

source /usr/local/bin/virtualenvwrapper.sh

echo "
# python virtual environment setup 
export WORKON_HOME=$WORKON_HOME
export PROJECT_HOME=$PROJECT_HOME
source /usr/local/bin/virtualenvwrapper.sh
" | tee -a ~/.bashrc

exit
