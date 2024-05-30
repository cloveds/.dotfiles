sudo pacman -S npm hyprland waybar kitty base-devel cmake unzip ninja curl xz openssl zlib tk
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
