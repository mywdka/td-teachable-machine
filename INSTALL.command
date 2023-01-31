#!/bin/zsh
CDIR=$( dirname -- "$0"; )
echo $CDIR
# Check if python3 is there
if ! command -v python3 &> /dev/null
then
	echo -e "Python3 not installed.\nInstall python 395 from here: https://www.python.org/downloads/release/python-395/"
	exit
fi

# Check if Python is the correct version (3.9.5)
PYTHONV=$( python3 --version )
if [ "$PYTHONV" != "Python 3.9.5" ] 
then
	echo -e "Got $PYTHONV but need Python 3.9.5"
	exit
fi

PYTHON=$( which python3 )
# Create virtual environment
$PYTHON -m venv "${CDIR}/td-tm"
# Activate virtual env
source "${CDIR}/td-tm/bin/activate"
# Install pip packages
pip install -r "${CDIR}/requirements.txt"
echo "Done!"
deactivate && exit
