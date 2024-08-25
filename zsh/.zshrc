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

ZSH_THEME="powerlevel10k/powerlevel10k"

export PATH=$PATH:/home/marius/go/bin
export PATH=$PATH:/home/marius/Applications
export GO_PATH=/home/marius/go
export PATH=$PATH:/$GO_PATH/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export EDITOR="nvim -u NONE"
export DISABLE_AUTO_TITLE=true

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
    export EDITOR='nvim -u NONE'
else
    export EDITOR='nvim -u NONE'
fi

# Aliases
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias lg="lazygit"
alias dc="docker-compose"
alias tmux="TERM=xterm-256color tmux"
alias tlsplus="cd /home/marius/open-source/CoreDNS/coredns-tlsplus/"

#alias tasb1="terraform apply --var-file var-files/terraform.sb1.tfvars"
#alias tasb2="terraform apply --var-file var-files/terraform.sb2.tfvars"
#alias tasb3="terraform apply --var-file var-files/terraform.sb3.tfvars"
#alias tasb4="terraform apply --var-file var-files/terraform.sb4.tfvars"
#alias tasb5="terraform apply --var-file var-files/terraform.sb5.tfvars"
#alias tasb6="terraform apply --var-file var-files/terraform.sb6.tfvars"
alias tasb1="terraform workspace select sb1 && terraform apply --var-file var-files/terraform.sb1.tfvars"
alias tasb2="terraform workspace select sb2 && terraform apply --var-file var-files/terraform.sb2.tfvars"
alias tasb3="terraform workspace select sb3 && terraform apply --var-file var-files/terraform.sb3.tfvars"
alias tasb4="terraform workspace select sb4 && terraform apply --var-file var-files/terraform.sb4.tfvars"
alias tasb5="terraform workspace select sb5 && terraform apply --var-file var-files/terraform.sb5.tfvars"
alias tasb6="terraform workspace select sb6 && terraform apply --var-file var-files/terraform.sb6.tfvars"

alias tpsb1="terraform workspace select sb1 && terraform plan --var-file var-files/terraform.sb1.tfvars"
alias tpsb2="terraform workspace select sb2 && terraform plan --var-file var-files/terraform.sb2.tfvars"
alias tpsb3="terraform workspace select sb3 && terraform plan --var-file var-files/terraform.sb3.tfvars"
alias tpsb4="terraform workspace select sb4 && terraform plan --var-file var-files/terraform.sb4.tfvars"
alias tpsb5="terraform workspace select sb5 && terraform plan --var-file var-files/terraform.sb5.tfvars"
alias tpsb6="terraform workspace select sb6 && terraform plan --var-file var-files/terraform.sb6.tfvars"

alias tdsb1="terraform workspace select sb1 && terraform destroy --var-file var-files/terraform.sb1.tfvars"
alias tdsb2="terraform workspace select sb2 && terraform destroy --var-file var-files/terraform.sb2.tfvars"
alias tdsb3="terraform workspace select sb3 && terraform destroy --var-file var-files/terraform.sb3.tfvars"
alias tdsb4="terraform workspace select sb4 && terraform destroy --var-file var-files/terraform.sb4.tfvars"
alias tdsb5="terraform workspace select sb5 && terraform destroy --var-file var-files/terraform.sb5.tfvars"
alias tdsb6="terraform workspace select sb6 && terraform destroy --var-file var-files/terraform.sb6.tfvars"


unalias encrypt_sb1 encrypt_sb2 encrypt_sb3 encrypt_sb4 encrypt_sb5 encrypt_sb6 encrypt_prod encrypt_prog_sb encrypt_prog_sb2 2>/dev/null

encrypt_sb1() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb1 encrypt --key-id 996e9c19-40ac-4328-9af8-2515b6517535 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_sb2() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb2 encrypt --key-id 547892a6-9063-4b39-ac12-411188a15461 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_sb3() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb3 encrypt --key-id 76562f41-5c7f-406c-90dd-52a22c70b425 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_sb4() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb4 encrypt --key-id 6e76ef33-0982-409e-8f4d-68e6e17c1857 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_sb5() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb5 encrypt --key-id bfe0a3a3-dbe3-40a5-b038-0c816bea7333 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_sb6() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile mainsb6 encrypt --key-id 1ef24334-b054-432f-946c-8d498f15a6ae --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_prod() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile default-mfa encrypt --key-id 71fdfc0b-65ca-4ac4-b3a2-80af86fd8bb4 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_prog_sb() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile programmatic-sb-mfa encrypt --key-id fbdd74c1-3147-47e4-907e-bc821b935af9 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

encrypt_prog_sb2() {
    if [[ -z "$1" ]]; then
        echo "Error: Input is empty"
        return 1
    fi
    aws kms --profile programmatic-sb2-mfa encrypt --key-id b1b82b38-76ad-4e54-973c-b78803995810 --plaintext fileb://<(echo -n "$1") | jq -r .CiphertextBlob
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias luamake=/home/marius/tools/lua-language-server/3rd/luamake/luamake

## Functions
cover () { 
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}


alias sam="SAM_CLI_TELEMETRY=0 sam"
export PATH=$PATH:$HOME/bin
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# setxkbmap -option "caps:swapescape"

# pnpm
export PNPM_HOME="/home/marius/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Function to get the current path relative to the git root
git_prompt_info() {
    # Check if we are in a git repository
    local git_root=$(git rev-parse --show-toplevel 2> /dev/null)
    if [[ -n $git_root ]]; then
        # If in a git repo, extract the folder name and the path relative to the git root
        local repo_name=$(basename "$git_root")
        local relative_path=$(realpath --relative-to="$git_root" "$(pwd)")
        # Handle the case when we are at the root of the git repository
        if [[ "$relative_path" == "." ]]; then
            relative_path=""
        else
            relative_path="/$relative_path"
        fi
        echo "[%F{cyan}$repo_name%F{none}$relative_path]%F{green}$(git branch --show-current 2> /dev/null)%f \$ "
    else
        # Default prompt if not in a git repository
        echo "%F{yellow}%1~%f \$ "
    fi
}

# Update the PROMPT variable
PROMPT='$(git_prompt_info)'
