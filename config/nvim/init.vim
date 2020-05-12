" vim: tabstop=2 shiftwidth=2 expandtab:

" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:plugged = s:cache_home . '/plugged'
call plug#begin(s:plugged)
  Plug 'vim-jp/vimdoc-ja'
  Plug 'bronson/vim-trailing-whitespace'

  Plug 'lotabout/skim', { 'dir': '~/.skim', 'do': './install' }
  Plug 'lotabout/skim.vim'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  Plug 'vlime/vlime', {'rtp': 'vim/'}
    let g:vlime_leader = '\'
    let g:vlime_cl_impl = 'ccl'
    let g:vlime_compiler_policy = {'DEBUG': 3, 'SPEED': 0}
    let g:vlime_contribs = [ 'SWANK-ASDF', 'SWANK-PACKAGE-FU',
                           \ 'SWANK-PRESENTATIONS', 'SWANK-FANCY-INSPECTOR',
                           \ 'SWANK-C-P-C', 'SWANK-ARGLISTS', 'SWANK-REPL',
                           \ 'SWANK-FUZZY', 'SWANK-TRACE-DIALOG']

  Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
  Plug 'luochen1990/rainbow'
    let g:rainbow_active = 1
call plug#end()

" https://postd.cc/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
nnoremap <CR> G
nnoremap <BS> gg
noremap gV `[v`]

" fzf.vim / skim.vim
nnoremap <Leader>e :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>w :Windows<CR>
nnoremap <Leader>s :GFiles?<CR>
nnoremap <Leader>c :Commits<CR>
nnoremap <Leader>h :Helptags<CR>

" disable highlight after searching
nnoremap <Esc><Esc> :nohlsearch<CR>

" Open temporary file
" https://nanasi.jp/articles/howto/file/workingfile.html
command! Scratch :new `=tempname()`
command! VScratch :vnew `=tempname()`
command! ScratchLisp :new `=printf("%s.lisp", tempname())`
command! VScratchLisp :vnew `=printf("%s.lisp", tempname())`
let $TODAY = strftime('%Y%m%d')

" autosave
set autowrite

set smarttab

set list
set listchars=tab:<->
