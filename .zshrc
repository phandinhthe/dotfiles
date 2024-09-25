# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# ~/.zshrc starship
# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
bindkey -v
bindkey '^j' vi-cmd-mode
export STARSHIP_CACHE=~/.starship/STARSHIP_CACHE
type starship_zle-keymap-select >/dev/null || \
  {
    echo "Load starship"
    eval "$(/usr/local/bin/starship init zsh)"
  }

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Add maven
export MAVEN_HOME="/usr/local/apache-maven-3.8.1"
export PATH="$PATH:$MAVEN_HOME/bin"

# Add confluent
export CONFLUENT="/usr/local/confluent-6.1.1"
export PATH="$PATH:$CONFLUENT/bin"

# Add Kubectl config
export KUBECONFIG="$HOME/.kube/config"

# Add gitlab
export GITLAB_HOME="$HOME/gitlab"

#u For Go
export SQLC="$HOME/go/bin/sqlc"
export GOOSE="$HOME/go/bin/goose"

# nvim
export NVIM="/usr/local/bin/nvim"

# gradle
export GRADLE_HOME=/usr/local/gradle/gradle-8.6
export PATH=$PATH:$GRADLE_HOME/bin

#AWS cli
export AWS_CLI_HOME=usr/local/bin/aws
export PATH=$PATH:$AWS_CLI_HOME

#home
export home=$HOME
alias sourcezsh='source $HOME/.zshrc'
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-prompt

  docker
  docker-compose
  aws
  brew
  branch
  cp 

  python
  history
  keychain
  macos
  mvn
  npm
  vscode
  shell
  eza

  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-navigation-tools
  zsh-interactive-cd
  vi-mode
  vim-interaction
  tmux
  tmux-cssh
  man

  docker
  docker-compose
  node
  command-not-found
  z
  zoxide
  zsh
  bash
  fzf
  )



alias java21="export JAVA_HOME=`/usr/libexec/java_home -v 21`; java -version"
alias java17="export JAVA_HOME=`/usr/libexec/java_home -v 17`; java -version"
alias java15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
alias java11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
java17
alias maven="mvn"

#alias kubectl="minikube kubectl --"
alias kubectl="kubectl"
alias nvim="$NVIM"
alias sqlc="$SQLC"
alias goose="$GOOSE"

# use to colorize pager for `man`
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
#man 2 select

# Highlighting --help messages
# in your .bashrc/.zshrc/*rc
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}
export BAT_PAGING=always

#eza for ls
alias ls="eza --icons=always --color=always $@"
alias la="eza --icons=always --color=always -al"

# add default catppuccin for FZF
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"
source <(fzf --zsh)

# auto suggestion, auto syntax Highlighting
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
# setup fo Z eval "$(zoxide init zsh)"
eval "$(zoxide init zsh)"
