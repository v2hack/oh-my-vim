oh-my-vim
===========
安装步骤：
-----------

git clone oh-my-vim
--------------------

.. code-block:: shell

    git clone https://github.com/v2hack/oh-my-vim.git ~/.vim

execute install script
----------------------

.. code-block:: shell

    bash ~/.vim/install.sh

.. code-block:: shell

    sudo apt-get install python2.7
    sudo apt-get install libpython-dev
    sudo apt-get install clang-3.8
    sudo apt-get install libclang-3.8-dev
    sudo apt-get install clang-format-3.8
    sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev 
    sudo apt-get install libgtk2.0-dev libatk1.0-dev libbonoboui2-dev 
    sudo apt-get install libcairo2-dev libx11-dev libxpm-dev libxt-dev 
    sudo apt-get install python-dev ruby-dev mercurial checkinstall 
    sudo apt-get install ccache
    sudo apt-get install python-dev python3-dev
    sudo apt-get install gvim
    sudo apt-get install vim-gtk3-py2

编译YouCompleteMe
-----------------

.. code-block:: shell

    cd ~/.vim/bundle/YouCompleteMe
    git submodule update --init --recursive
    ./install.sh --clang-completer --system-libclang


vim-surround
---------------


.. code-block:: shell

    ds   - delete a surrounding
    cs   - change a surrounding
    ys   - add a surrounding
    yS   - add a surrounding and place the surrounded text on a new line + indent it
    ss   - add a surrounding to the whole line
    ySs  - add a surrounding to the whole line, place it on a new line + indent it
    ySS  - same as ySs
    ysiw) - add " on the word


快速文档注释
------------

.. code-block:: shell

    cc  Comments out the current line or text selected in visual mode.
    c<space>  Toggles the comment state of the selected line(s). If
        the topmost selected line is commented, all selected lines are
        uncommented and vice versa.
    ci  Toggles the comment state of the selected line(s) individually.
        Each selected line that is commented  is uncommented and vice versa
    cs Comments out the selected lines ``sexily'
    c$  Comments the current line from the cursor to the end of line.
    cy  Same as ,cc except that the commented line(s) are yanked before commenting.

文件切换
-----------
.. code-block:: shell

   头/源文件切换命令
   A 头文件／源文件切换
   AS 分割窗后并切换头/源文件(切割为上下两个窗口)
   AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
   AT 新建Vim标签式窗口后切换
   AN 在多个匹配文件间循环切换

   将光标所在处单词作为文件名打开
   IH 切换至光标所在文件
   IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
   IHV 垂直分割窗口后切换
   IHT 新建标签式窗口后切换
   IHN 在多个匹配文件间循环切换

   快捷键操作
   <Leader>ih 切换至光标所在文件*
   <Leader>is 切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
   <Leader>ihn 在多个匹配文件间循环切换
