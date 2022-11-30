
" show existing tab with 4 spaces width
" set tabstop=4
" when indenting with '>', use 4 spaces width
" set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab

" plugins expect bash - not fish, zsh, etc
set shell=bash

" highlight the search words, to disable it :nohlsearch
set hlsearch

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" go to the position I was when last editing the file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif


" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p


" === go related - start ===
" turn highlighting on
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" gotags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" === go related - end ===
