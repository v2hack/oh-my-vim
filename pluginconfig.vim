" supertab
"let g:SuperTabMappingBackward = "<S-Tab>"
"let g:SuperTabMappingForward = "<S-Tab>"
"let g:SuperTabMappingTabLiteral = "<tab>"

" vim-startify
let g:startify_custom_header = map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['','']

" UltiSnips
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsListSnippets = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" airline
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#whitespace#enabled = 1

" syntastic
let g:syntastic_check_on_wq = 0

" c.file and h.file change"
nmap <silent> <F3> :A<cr>

" gundo
"nnoremap <F2> :GundoToggle<CR>

" NerdTree
nnoremap <F4> :NERDTreeToggle<cr>

" buffer explorer
nnoremap <F7> :BufExplorer<cr>

" tagbar
nnoremap <F8> :TagbarToggle<cr>
" ycm
nnoremap <F9> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic

"let g:tagbar_sort = 0
let g:tagbar_autofocus = 1
"let g:tagbar_singleclick = 1
"let g:tagbar_autoshowtag = 1
"let g:tagbar_previewwin_pos = "aboveleft"
"let g:tagbar_autopreview = 1
let g:tagbar_width=35


" DoxygenToolkit.vim
let g:DoxygenToolkit_authorName = 'nanye'
let g:DoxygenToolkit_versionString = '1.0'

" Note: This option must set it in .vimrc(_vimrc).
" NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplete.

" ag.vim
let g:ag_working_path_mode='r'
let g:ackprg = 'ag --nogroup --nocolor --column'

" OmniCppComplete
set completeopt=menu,longest,menuone
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem = 2
let OmniCpp_DisplayMode=1
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
