if ! command -v vim &> /dev/null
then
	echo "Installing vim"
    sudo apt install -y vim
fi

if ! command -v tmux &> /dev/null
then
	echo "Installing tmux"
    sudo apt install -y tmux
fi

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing TPM"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing Powerline fonts"
sudo apt install -y fonts-powerline

tmux source ~/.tmux.conf
