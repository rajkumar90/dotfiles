# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Webstorm
export PATH=$PATH:"/Applications/WebStorm.app/Contents/MacOS"

export DOCKER_HOST="unix://$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock"
export UID=$UID
export GID=$GID

ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

zstyle ':omz:update' frequency 60

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# History
setopt HIST_FIND_NO_DUPS
setopt inc_append_history
setopt EXTENDED_HISTORY
autoload -Uz compinit && compinit

# Plugins
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions autojump dirhistory)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# misc aliases
alias mkcd='mkdir "$1" && cd "$1"'

# dev aliases
alias duh="dev up && dev honk"
alias dt="dev test"

# zsh aliases
alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'

# Github copilot aliases
alias copilot='gh copilot'
alias gcs='gh copilot suggest'
alias gce='gh copilot explain'

# Git aliases
alias gb='git branch'
alias gbd="git for-each-ref --sort='-committerdate' --format='%(refname)' refs/heads | sed -e 's-refs/heads/--'"
alias gs='git status'
alias gst='git stash'
alias gcom='git checkout master'
alias gpom='git pull origin main'
alias gpl='git pull'
alias gps='git push origin HEAD'
alias grm='git rebase main'
alias grc='git rebase --continue'
alias gsw='git switch'
alias gsw-='git switch -'
alias gsh='git show'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias glp='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gch='git checkout'
alias gcp='git cherry-pick'
alias gcpc='git cherry-pick --continue'
alias gchb='git checkout -b'
alias gd='git diff'
alias gdh='git head'
alias gsq='git add . && git commit --amend --no-edit'
alias gsqp='git add . && git commit --amend --no-edit && git push -f origin $(git branch --show-current)'
# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }
if [ -e /Users/raj/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/raj/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

 sfnpr() {
  open -a "Google Chrome" "https://github.com/Shopify/fbs/pulls?q=is%3Apr+$1"
}

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

[[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && . "$(brew --prefix nvm)/etc/bash_completion.d/nvm"
export ENABLE_TEST_LOGS=true
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && . "$(brew --prefix nvm)/etc/bash_completion.d/nvm"
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"
[ -s "$(brew --prefix nvm)/etc/bash_completion.d/nvm" ] && . "$(brew --prefix nvm)/etc/bash_completion.d/nvm"

# Github CLI Copilot
eval "$(github-copilot-cli alias -- "$0")"
source ~/.devrc
source /Users/rmani/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

