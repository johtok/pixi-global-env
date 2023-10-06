mkdir .apps


echo "installing nvim" 
cd .apps
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
mv ./nvim.appimage ./nvim
chmod u+x ./nvim
cd

echo "installing lunarvim"
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

echo "installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "installing helix"
cd .apps
curl -LO https://github.com/helix-editor/helix/releases/download/23.05/helix-23.05-x86_64.AppImage
mv ./helix-23.05-x86_64.AppImage ./hx
chmod u+x ./hx
cd 

echo "installing pixi"
curl -fsSL https://pixi.sh/install.sh | bash

pixi global install zsh 

echo "~/.pixi/bin/zsh && exit" >> .bashrc

