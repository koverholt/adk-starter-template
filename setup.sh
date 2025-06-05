# Install Python
export PYTHON_PREFIX=~/miniforge
curl -Lo ~/miniforge.sh https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
bash ~/miniforge.sh -fbp ${PYTHON_PREFIX}
rm -rf ~/miniforge.sh

# Activate Python
${PYTHON_PREFIX}/bin/conda init
source ~/.bashrc

# Install packages
${PYTHON_PREFIX}/bin/pip install -r requirements.txt

# Run app
${PYTHON_PREFIX}/bin/adk web --port 8080
