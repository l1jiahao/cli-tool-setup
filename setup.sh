# oh my zsh
# sh -c "$(curl -fsSL https://install.ohmyz.sh/)"

# starship
curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init zsh)"' >> ~/.zshrc


# fzf 模糊搜索, 对于 fzf < 0.48.0
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# Append this line to ~/.zshrc to enable fzf keybindings for Zsh:
echo 'source /usr/share/doc/fzf/examples/key-bindings.zsh' >> ~/.zshrc
# Append this line to ~/.zshrc to enable fuzzy auto-completion for Zsh:
echo 'source /usr/share/doc/fzf/examples/completion.zsh' >> ~/.zshrc

# zoxide 代替 cd
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc
echo 'alias cd="z"' >> ~/.zshrc

# eza 代替 cd, Ubuntu/Debian
sudo apt update
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza
echo 'alias ls="eza --icons=always --group-directories-first --color=auto"' >> ~/.zshrc
# 更换默认 shell
chsh -s /usr/bin/zsh
