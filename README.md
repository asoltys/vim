This is my vim setup  
It relies on NERDTree, FuzzyFileFinderTextmate, and Ack plugins

To use, make sure ruby is installed, then:

cd ~ && git clone git://github.com/asoltys/vim .vim  
ln -s .vim/.vimrc .vimrc  
sudo apt-get install ack-grep && ln -s /usr/bin/ack-grep /usr/bin/ack  
sudo gem sources -a http://gems.github.com  
sudo gem install jamis-fuzzy_file_finder  
sudo gem install vim-ruby
