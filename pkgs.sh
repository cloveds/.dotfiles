sudo pacman -S git npm wpaperd luarocks wget neofetch hyprland waybar kitty base-devel cmake unzip ninja curl brightnessctl go grim slurp
pacman -S --needed base-devel openssl zlib xz tk
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'alias vi="nvim"' >> ~/.bashrc
echo 'alias vim="nvim"' >> ~/.bashrc
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
mkdir .local .local/share
unzip ~/JetBrainsMono.zip -d ~/.local/share/fonts
luarocks install --server=https://luarocks.org/dev luaformatter
