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
    let g:vlime_leader = ','
    let g:vlime_cl_impl = 'ccl'
    let g:vlime_compiler_policy = {'DEBUG': 3, 'SPEED': 0}
  Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
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

" autosave
set autowrite

set smarttab

set list
set listchars=tab:<->
