# oh-my-vim

## Setup：

### git clone oh-my-vim

    $ git clone https://github.com/v2hack/oh-my-vim.git ~/.vim

### execute install script

    $ bash ~/.vim/install.sh

    $ sudo apt-get install python2.7
    $ sudo apt-get install libpython-dev
    $ sudo apt-get install clang-3.8
    $ sudo apt-get install libclang-3.8-dev
    $ sudo apt-get install clang-format-3.8
    $ sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev 
    $ sudo apt-get install libgtk2.0-dev libatk1.0-dev libbonoboui2-dev 
    $ sudo apt-get install libcairo2-dev libx11-dev libxpm-dev libxt-dev 
    $ sudo apt-get install python-dev ruby-dev mercurial checkinstall 
    $ sudo apt-get install ccache
    $ sudo apt-get install python-dev python3-dev
    $ sudo apt-get install gvim
    $ sudo apt-get install vim-gtk3-py2
    $ sudo apt-get install silversearcher-ag

### compile YouCompleteMe

    $ cd ~/.vim/bundle/YouCompleteMe
    $ git submodule update --init --recursive
    $ ./install.sh --clang-completer --system-libclang

## Shortcut key:

### vim-surround

    ds   - delete a surrounding
    cs   - change a surrounding
    ys   - add a surrounding
    yS   - add a surrounding and place the surrounded text on a new line + indent it
    ss   - add a surrounding to the whole line
    ySs  - add a surrounding to the whole line, place it on a new line + indent it
    ySS  - same as ySs
    ysiw) - add " on the word

### vim-ag.vim

    $ Ag [options] {pattern} [{directory}]


![](https://github.com/v2hack/oh-my-vim/raw/master/img/ag-vim.png)


### Quick comment

    cc  Comments out the current line or text selected in visual mode.
    c<space>  Toggles the comment state of the selected line(s). If the topmost selected line
        is commented, all selected lines are uncommented and vice versa.
    ci  Toggles the comment state of the selected line(s) individually. Each selected line that
        is commented  is uncommented and vice versa
    cs  Comments out the selected lines ``sexily'
    c$  Comments the current line from the cursor to the end of line.
    cy  Same as ,cc except that the commented line(s) are yanked before commenting.

