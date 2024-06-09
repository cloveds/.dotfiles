sudo zypper install git npm hyprland waybar ninja cmake gcc-c++ gettext-tools curl mesa rust-wayland-client libwayland-egl gcc automake bzip2 libbz2-devel xz xz-devel openssl-devel ncurses-devel readline-devel zlib-devel tk-devel libffi-devel sqlite3-devel gdbm-devel make findutils patch
sudo zypper install neofetch go grim slurp
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
