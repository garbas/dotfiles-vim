

::

  cd ~
  git clone git@github.com:garbas/dotfile-vim.git
  ln -s .vim/config .vimrc

::

  apt-get install ruby-dev rake



build `command-t` bundle (this you have to do each time you upgrade command-t
bundle)::

    cd bundle/command-t
    rake make
