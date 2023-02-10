wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -O ~/miniconda.sh
zsh ~/miniconda.sh -b -p $HOME/miniconda
source $HOME/miniconda/bin/activate
conda init zsh
rm miniconda.sh
