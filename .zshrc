# Load Antigen
source /usr/local/share/antigen/antigen.zsh
antigen init ${HOME}/.dotfiles/.antigenrc

# ZSH Configurations
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dfdf09,bg=underline"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
export EDITOR="nvim"

# Aliases
alias dev="~/Developer"
alias zshconfig="vim ~/.dotfiles/.zshrc"
alias antigenconfig="vim ~/.dotfiles/.antigenrc" 
alias cleansuggestions="rm $HISTFILE"
