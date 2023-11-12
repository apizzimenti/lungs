# Properly configures your system to run this code. Let me know if you have any
# questions or problems! We can run through it together if you'd like :)

# Homebrew installation.
echo "\n\n#######################"
echo "# INSTALLING HOMEBREW #"
echo "#######################\n\n"
echo "\n"
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installing git.
echo "\n\n##################"
echo "# INSTALLING GIT #"
echo "##################\n\n"

brew install git

# Installing pyenv.
echo "\n\n####################"
echo "# INSTALLING PYENV #"
echo "####################\n\n"

brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Install a more recent version of Python 3.11, which is considered more stable
# than Python 3.12.x.
echo "\n\n#####################"
echo "# INSTALLING PYTHON #"
echo "#####################\n\n"
pyenv install 3.11:latest

# Install the python packages we might need; we can add more as we go along, but
# this should be good for now.
echo "\n\n#######################################"
echo "# INSTALLING REQUIRED PYTHON PACKAGES #"
echo "#######################################\n\n"
pip install pandas scipy numpy matplotlib seaborn

# Installing VSCode.
echo "\n\n#################################"
echo "# INSTALLING VISUAL STUDIO CODE #"
echo "#################################\n\n"
brew install --cask visual-studio-code

# Make sure we can do Code things from the command line.
echo "\n\n############################################"
echo "# INSTALLING VISUAL STUDIO CODE EXTENSIONS #"
echo "############################################\n\n"
echo 'export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"' >> ~/.bash_profile
source ~/.bash_profile

code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension GrapeCity.gc-excelviewer
code --install-extension christian-kohler.path-intellisense
