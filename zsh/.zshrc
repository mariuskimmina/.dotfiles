# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:/home/marius/go/bin
export GO_PATH=/home/marius/go
export PATH=$PATH:/$GO_PATH/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export EDITOR="nvim"
export DISABLE_AUTO_TITLE=true

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# kubectl autocompletion
source <(kubectl completion zsh)

# helm autocompletion
source <(helm completion zsh)

# User configuration

# Exports
export PATH=$PATH:/usr/local/go/bin
export DOTFILES=/home/marius/.dotfiles
export STOW_FOLDERS=(tmux zsh)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='nvim'
fi

# Aliases
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias lg="lazygit"
alias dc="docker-compose"
alias tmux="TERM=xterm-256color tmux"
alias mk8s="ssh marius@192.168.122.31"
alias monitorvm="ssh marius@192.168.122.92"
alias tlsplus="cd /home/marius/open-source/CoreDNS/coredns-tlsplus/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/home/marius/tools/lua-language-server/3rd/luamake/luamake
