# Configure zsh as default shell
chsh -s $(command -v zsh)

# Cleanup useless profile files and generate new .zshrc
FILESTOCLEANUP=(.bash_profile .zprofile .zsh_history .zshrc .zshrc.zwc)
for FILE in "${FILESTOCLEANUP[@]}"; do
	rm ${HOME}/$FILE
done

echo "# Generated from .dotfiles repository\nsource ~/.dotfiles/.zshrc" > ${HOME}/.zshrc

# Generate configurations for Neovim
mkdir ${HOME}/.config
mkdir ${HOME}/.config/nvim
echo "\" Generated from .dotfiles repository\nsource ~/.dotfiles/.vimrc" > ${HOME}/.config/nvim/init.vim

# Install SDKMan
curl -s http://get.sdkman.io | bash
