" vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2

" https://qiita.com/kawaz/items/ee725f6214f91337b42b
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let g:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = g:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

let &runtimepath .= ',' . s:dein_repo_dir
let g:dein#install_log_filename = g:dein_dir . '/install.log'

if dein#load_state(g:dein_dir)
  call dein#begin(g:dein_dir)

  " https://qiita.com/kawaz/items/ee725f6214f91337b42b
  let s:toml = fnamemodify(expand('<sfile>'), ':h') . '/dein.toml'
  call dein#load_toml(s:toml)

  call dein#end()
  call dein#save_state()
endif

filetype plugin on
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" https://postd.cc/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" disable highlight after searching
nnoremap <Esc><Esc> :nohlsearch<CR>

" autosave
set autowrite

set smarttab
