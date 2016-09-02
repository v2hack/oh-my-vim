# oh-my-vim

## Project:

    Oh-my-vim is my Ide, I like it. Do anything with it, fast and convenient.
    it contains many plugins, they are recorded in the vundles.vim file.

    install.sh        - install the vim project by it
    vimrc             - the vim's configure file, it include other *.vim file
    autocmds.vim      - auto command
    bindings.vim      - some main shortcut and my leader in it 
    configs.vim       - vim's original configure
    pluginconfig.vim  - configure for some plugins
    ycm.vim           - for plugin YouCompleteMe
    vundles.vim       - add/delete the third plugin
    bundle            - plugins manager
    colors            - many themes

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

### my shortcut

    My <Leader> is "," - it is defined in bindings.vim file, you can't change if you like

    <Leader>fef  -  format the whole file
    <Leader>vs   -  vsplite the windows
    <Leader>hs   -  splite the windows
    <Leader>ul   -  underline the current line
    <Leader>h    -  serach and high light current word
    <Leader>/    -  clear high light

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

    You can search the pattern string from all files in this directory, and list the result
    under the windows, like the below picture, can't jump between the different files


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

### YouCompleteMe

    YouCompleteMe (YCM) is a fast, as-you-type code completion engine for Vim. 
    It combines and prioritizes the output from several sources:

    * An identifier-based engine that works with every programming language;
    * A semantic, Clang-based engine that provides native semantic code completion for 
      C/C++/Objective-C/Objective-C++ (from now on referred to as “the C-family languages”);
    * A Jedi-based completion engine for Python;
    * An OmniSharp-based completion engine for C#
    * An omnifunc-based completer that uses data from Vim’s omnicomplete system to provide semantic
      completions for many other languages (Ruby, PHP, etc.).

    gg - go to declaration 
    gf - go to definition
    gg - go to definition else declaration
    [ctrl-o] - go back

![](https://github.com/v2hack/oh-my-vim/raw/master/img/ycm.gif)

