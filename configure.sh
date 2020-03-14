# Configure zsh as default shell
chsh -s $(command -v zsh)

# Cleanup useless profile files and generate new .zshrc
FILESTOCLEANUP=(.bash_profile .zprofile .zsh_history .zshrc .zshrc.zwc)
for FILE in "${FILESTOCLEANUP[@]}"; do
	rm ${HOME}/$FILE
done

echo "# Generated from .dotfiles repository\nsouroe ~/.dotfiles/.zshrc" > ${HOME}/.zshrc

# Install SDKMan
curl -s http://get.sdkman.io | bash
