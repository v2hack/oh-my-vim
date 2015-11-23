" supertab
"let g:SuperTabMappingBackward = "<S-Tab>"
let g:SuperTabMappingForward = "<S-Tab>"
let g:SuperTabMappingTabLiteral = "<tab>"

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
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
