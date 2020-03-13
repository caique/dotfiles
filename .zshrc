# Load Antigen
source /usr/local/share/antigen/antigen.zsh

# Load 'oh-my-zsh'
antigen use oh-my-zsh

# Load bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle docker
antigen bundle dotenv
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Set theme
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#dfdf09,bg=underline"
