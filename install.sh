#
# Install prezto
#
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

#
# Download configs
#
curl -o ~/.zpreztorc https://raw.githubusercontent.com/kerbyfc/dotfiles/master/.zpreztorc
curl -o ~/.zshprofile https://raw.githubusercontent.com/kerbyfc/dotfiles/master/.zshprofile

#
# Configure
#
echo '\nsource ./.zshprofile' > ~/.zshrc

#
# Launch
#
source ~/.zshprofile
zsh
