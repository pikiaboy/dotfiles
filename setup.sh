## Make sure the user has sudo permisson

sudo apt update;
sudo apt upgrade -y;
sudo apt install curl unzip git exa zsh;
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash;
touch  ~/.oh-my-zsh/custom/themes/custom.zsh-theme;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

# Pull dotFiles
git clone https://github.com/pikiaboy/dotfiles.git dotFiles;

# clean up previous dotfiles and hardlink to git
rm ~/.zshrc;
rm ~/.profile;

cd dotFiles;

ln .zshrc ~/.zshrc;
ln .profile ~/.profile;
ln ./oh-my-zsh/themes/custom.zsh-theme ~/.oh-my-zsh/custom/themes/custom.zsh-theme;
