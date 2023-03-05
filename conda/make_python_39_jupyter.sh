DIR_PATH=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
YML_DIR_PATH="${DIR_PATH}/yml"

conda env create -f $YML_DIR_PATH/vanilla-python-3.9-jupyter.yml
