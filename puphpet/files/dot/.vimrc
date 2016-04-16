"
" dotvim : https://github.com/dotphiles/dotvim
"
" Setup vim and load required plugins before dotvim
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Call dotvim
source ~/.vim/dotvim.vim

if has("user_commands")
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  "let g:vundles=['general', 'git', 'hg', 'programming', 'completion', 'ruby', 'python', 'misc']
  let g:vundles=['general', 'php', 'programming', 'git']
  "let g:neocomplcache_enable_at_startup = 1

  " Load 'vundles'
  source ~/.vim/vundles.vim
  " Add extra bundles here...
  " Bundle 'reponame'
  Bundle 'jpo/vim-railscasts-theme'
  Plugin 'vim-airline/vim-airline-themes'

endif

" Override colorscheme from base16
let g:dotvim_colorscheme = 'railscasts'

" Customize to your needs...
colo railscasts
set tabstop=2     " Set the default tabstop
set softtabstop=2
set shiftwidth=2  " Set the default shift width for indents
set expandtab     " Make tabs into spaces (set by tabstop)
set smarttab      " Smarter tab levels
set mouse=v
set nonumber      " Line numbers off
set timeoutlen=50 " Annoying delay in status bar

let g:airline_powerline_fonts = 1
let g:NERDTreeShowHidden = 1
let g:ctrlp_cmd = 'CtrlPMRU'


" Key mappings
normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi

" shift+arrow selection
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

