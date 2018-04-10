alias ga='git add -A'
alias gsu='git submodule update'
alias gs='git status'
alias gd='git diff'
alias gpl='git pull --rebase origin $(git rev-parse --abbrev-ref HEAD)'
alias gplr='git pull --rebase origin'
alias update-dotfiles='zsh -c "`curl -fssl https://raw.githubusercontent.com/kerbyfc/dotfiles/master/install.sh`"'
alias gmm='git fetch && git merge --no-ff origin/master'
alias gm='git merge --no-ff'
alias gmf='git merge'

alias chrome-insecure="open -n /Applications/Google\ Chrome.app --args --allow-insecure-localhost --disable-web-security --remember-cert-error-decisions --ignore-certificate-errors"
alias glg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias gbr='for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r'
alias gbrm='for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r'

function gre () {
  git fetch
  if [ "$1" != "" ]
  then
    echo "Reset to origin/\e[34m$1\e[0m"
    git reset --hard origin/$1
  else
    echo "Reset to origin/\e[34m$(git rev-parse --abbrev-ref HEAD)\e[0m"
    git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
  fi
}
