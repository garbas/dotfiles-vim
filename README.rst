DOTFILES-VIM
============


Setting up the system
---------------------

Ubuntu (tested with: 10.10)::

    % sudo apt-add-repository ppa:passy/vim
    % sudo add-apt-repository ppa:jerome-etienne/neoip
    % sudo apt-get update
    % sudo apt-get install vim git-core ruby-dev rake ack-grep nodejs

Initial install of `.vim` folder
--------------------------------

::

    cd ~
    git clone git@github.com:garbas/dotfiles-vim.git .vim
    ln -s .vim/config-XYZ .vimrc
    cd .vim
    git submodule update --init


Maintainance
-----------

::

  % git pull
  % git submodule update --init
  % cd bundle/command-t
  % rake make


build `command-t` bundle (this you have to do each time you upgrade command-t
bundle)::

