set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/csapprox'
Bundle 'vim-scripts/bufexplorer.zip'
"Bundle 'vim-scripts/delimitMate.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'
Plugin 'bling/vim-airline'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DrawIt'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rking/ag.vim'
Bundle 'Mizuchi/STL-Syntax'

" html & css quick editing
Bundle 'mattn/emmet-vim'
" need python suport
Bundle 'klen/python-mode'
Bundle 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'gregsexton/MatchTag'

" solarized colorscheme
Bundle 'altercation/vim-colors-solarized'

" DoxyGen"
Bundle 'vim-scripts/DoxyGen-Syntax'
Bundle 'vim-scripts/DoxygenToolkit.vim'

" Matrix"
Bundle 'uguu-org/vim-matrix-screensaver'

" Taglist"
"Bundle 'vim-scripts/taglist.vim'

"Commenter"
",cc  Comments out the current line or text selected in visual mode.
",c<space>  Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
",ci  Toggles the comment state of the selected line(s) individually. Each selected line that is commented  is uncommented and vice versa
",cs Comments out the selected lines ``sexily'
",c$  Comments the current line from the cursor to the end of line.
",cy  Same as ,cc except that the commented line(s) are yanked before commenting.
",cu  Uncomments the selected line(s). '
Bundle 'vim-scripts/The-NERD-Commenter'


"file change"
"头/源文件切换命令
":A 头文件／源文件切换
":AS 分割窗后并切换头/源文件(切割为上下两个窗口)
":AV 垂直切割窗口后切换头/源文件(切割为左右两个窗口)
":AT 新建Vim标签式窗口后切换
":AN 在多个匹配文件间循环切换
"将光标所在处单词作为文件名打开
":IH 切换至光标所在文件
":IHS 分割窗口后切换至光标所在文件(指将光标所在处单词作为文件名打开)
":IHV 垂直分割窗口后切换
":IHT 新建标签式窗口后切换
":IHN 在多个匹配文件间循环切换
"快捷键操作
"<Leader>ih 切换至光标所在文件*
"<Leader>is 切换至光标所在处(单词所指)文件的配对文件(如光标所在处为foo.h，则切换至foo.c/foo.cpp...)
"<Leader>ihn 在多个匹配文件间循环切换

Bundle 'vim-scripts/a.vim'


"自动不全路径Shougo/neocomplcache.vim"
Bundle 'Shougo/neocomplete.vim'


