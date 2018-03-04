set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
"自动括号
Bundle 'tpope/vim-surround'
"文件管理器
Bundle 'scrooloose/nerdtree'
"快速文档注释
Bundle 'scrooloose/nerdcommenter'
"语法检查
Bundle 'scrooloose/syntastic'
"vim主题管理
Bundle 'godlygeek/csapprox'
"文件打开历史
Bundle 'lostedleo/bufexplorer'
"git diff插件，实时显示
Bundle 'airblade/vim-gitgutter'
"状态栏中的git信息
Bundle 'tpope/vim-fugitive'
"taglist替代品
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
"显示打开过的文档
Bundle 'mhinz/vim-startify'
"状态栏
Plugin 'bling/vim-airline'
"tab自动提示
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DrawIt'
"缩进线
Bundle 'nathanaelkane/vim-indent-guides'
"快速查找插件
Bundle 'rking/ag.vim'
"C++ STL高亮
Bundle 'Mizuchi/STL-Syntax'
" html & css quick editing
Bundle 'mattn/emmet-vim'
"代码补全
"Plugin 'honza/vim-snippets'
"html标签匹配
Bundle 'gregsexton/MatchTag'
"彩色主题
Bundle 'altercation/vim-colors-solarized'
"DoxyGen"
Bundle 'vim-scripts/DoxyGen-Syntax'
Bundle 'vim-scripts/DoxygenToolkit.vim'
"Matrix保护屏
Bundle 'uguu-org/vim-matrix-screensaver'
"头文件切换"
Bundle 'vim-scripts/a.vim'
"自动补全路径"
"Bundle 'Shougo/neocomplete.vim'
"代码补全
Bundle 'Valloric/YouCompleteMe'

Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

Bundle 'Valloric/ListToggle'
Plugin 'fatih/vim-go'

"Bundle 'tpope/vim-git'
" CodeComplete"
"Bundle 'mbbill/code_complete'
"Bundle 'sjl/gundo.vim'

Bundle 'vim-scripts/OmniCppComplete'

