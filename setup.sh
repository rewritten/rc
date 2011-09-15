# install things
curl -Lq https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh | sudo sh
curl -Lq https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
curl -Lqs https://rvm.beginrescueend.com/install/rvm | sh
# install vim plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim > ~/.vim/autoload/pathogen.vim
grep "call pathogen#infect()" ~/.vimrc || (echo "call pathogen#infect()" >> ~/.vimrc)
cd ~/.vim/bundle
if [[ -d snipmate.vim ]]; then
    cd snipmate.vim; git pull; cd -
else
    git clone git://github.com/msanders/snipmate.vim.git
fi
if [[ -d nerdtree ]]; then
    cd nerdtree; git pull; cd -
else
    git clone https://github.com/scrooloose/nerdtree.git
fi
if [[ -d vim-rails ]]; then
    cd vim-rails; git pull; cd -
else
    git clone https://github.com/tpope/vim-rails.git
fi

