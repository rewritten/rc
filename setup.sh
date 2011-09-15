# install things
curl -Lq https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh | sudo sh
curl -Lq https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
curl -Lqs https://rvm.beginrescueend.com/install/rvm | sh
# install vim plugins
mkdir -p ~/git
cd ~/git
git clone git://github.com/msanders/snipmate.vim.git && (cd snipmate.vim && cp -R * ~/.vim)
git clone https://github.com/scrooloose/nerdtree.git && (cd nerdtree && cp -R * ~/.vim)
git clone https://github.com/tpope/vim-rails.git && (cd vim-rails && cp -R * ~/.vim)

