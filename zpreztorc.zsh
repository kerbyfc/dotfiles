# Set case-sensitivity for completion, history lookup, etc.
# zstyle ':prezto:*:*' case-sensitive 'yes'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':prezto:*:*' color 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':prezto:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':prezto:load' zfunction 'zargs' 'zmv'

# Set the Prezto modules to load (browse modules).
# The order matters.
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'ssh' \
  'completion' \
  'homebrew' \
  'osx' \
  'ruby' \
  'rails' \
  'git' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'

#
# Theme
#
zstyle ':prezto:module:prompt' theme 'kerby'

#
# Editor
#

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':prezto:module:editor' key-bindings 'emacs'

# Auto convert .... to ../..
# zstyle ':prezto:module:editor' dot-expansion 'yes'

#
# Git
#

# Ignore submodules when they are 'dirty', 'untracked', 'all', or 'none'.
# zstyle ':prezto:module:git:status:ignore' submodules 'all'

#
# GNU Utility
#

# Set the command prefix on non-GNU systems.
# zstyle ':prezto:module:gnu-utility' prefix 'g'

#
# History Substring Search
#

# Set the query found color.
# zstyle ':prezto:module:history-substring-search:color' found ''

# Set the query not found color.
# zstyle ':prezto:module:history-substring-search:color' not-found ''

# Set the search globbing flags.
# zstyle ':prezto:module:history-substring-search' globbing-flags ''

#
# Pacman
#

# Set the Pacman frontend.
# zstyle ':prezto:module:pacman' frontend 'yaourt'

#
# Ruby
#

# Auto switch the Ruby version on directory change.
# zstyle ':prezto:module:ruby:chruby' auto-switch 'yes'

#
# Screen
#

# Auto start a session when Zsh is launched in a local terminal.
# zstyle ':prezto:module:screen:auto-start' local 'yes'

# Auto start a session when Zsh is launched in a SSH connection.
# zstyle ':prezto:module:screen:auto-start' remote 'yes'

#
# SSH
#

# Set the SSH identities to load into the agent.
zstyle ':prezto:module:ssh:load' identities 'id_rsa'

#
# Syntax Highlighting
#

# Set syntax highlighters.
# By default, only the main highlighter is enabled.
zstyle ':prezto:module:syntax-highlighting' highlighters \
  'main' \
  'brackets' \
  'pattern' \
  'cursor' \
  'root'
#
# Set syntax highlighting styles.
zstyle ':prezto:module:syntax-highlighting' styles \
  'builtin' 'bg=blue' \
  'command' 'bg=blue' \
  'function' 'bg=blue'

#
# Terminal
#

# Auto set the tab and window titles.
zstyle ':prezto:module:terminal' auto-title 'yes'

# Set the window title format.
zstyle ':prezto:module:terminal:window-title' format '%n@%m: %s'

# Set the tab title format.
zstyle ':prezto:module:terminal:tab-title' format '%m: %s'

#
# Aliases
#

alias gsu='git submodule update'
alias gs='git status'
alias gpl='git pull --rebase origin $(git rev-parse --abbrev-ref HEAD)'

alias chrome-insecure="open -n /Applications/Google\ Chrome.app --args --allow-insecure-localhost --disable-web-security --remember-cert-error-decisions --ignore-certificate-errors"
alias glg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

