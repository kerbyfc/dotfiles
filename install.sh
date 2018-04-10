#
# Install prezto
#
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#
# Download configs
#
if [ -d "${ZDOTDIR:-$HOME}/.dotfiles" ]; then
  cd "${ZDOTDIR:-$HOME}/.dotfiles"
  git fetch
  git pull --rebase origin master
else
  git clone --recursive https://github.com/kerbyfc/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"
fi

zsh ~/.dotfiles/link.sh

#
# Configure
#
INSTALLED=$(cat ~/.zshrc | grep "source ~/.zshprofile")
if ! [ $INSTALLED ]; then echo '\nsource ~/.zshprofile' >> ~/.zshrc; fi

#
# Launch
#
source ~/.zshprofile
zsh
