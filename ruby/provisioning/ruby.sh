    cd
    git clone git://github.com/sstephenson/rbenv.git .rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
    source ~/.bash_profile
    rbenv install -v 2.3.0
    rbenv global 2.3.0
    echo "gem: --no-document" > ~/.gemrc
    gem install bundler
    gem install rails -v 4.2.6
    rbenv rehash