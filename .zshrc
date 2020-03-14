# Load Antigen
if [[ -f ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload ]]; then
    source ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload
    autoload -Uz compinit
    compinit -d ${HOME}/.zcompdump
else
    source /usr/local/share/antigen/antigen.zsh
    antigen init ${HOME}/.dotfiles/.antigenrc
fi

# ZSH Configurations
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dfdf09,bg=underline"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
export EDITOR="vim"

# Aliases
alias dev="~/Developer"
alias zshconfig="vim ~/.dotfiles/.zshrc"
alias antigenconfig="vim ~/.dotfiles/.antigenrc" 
