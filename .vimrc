" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" plugin List begin

call vundle#begin()

Plugin 'VundleVim/Vundle.Vim'
Plugin 'L9'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'brookhong/cscope.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

" plugin list end

set cursorline

" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" tab padrao aker
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:tagbar_autofocus = 1
" wrap 80.
set textwidth=120
" turn syntax highlighting on
syntax on
set number
set list
set showmatch
set t_Co=256
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
set diffopt+=vertical

" Destaca (ou tenta) espacos em branco no fim de linhas
highlight ExtraWhitespace ctermbg=white guibg=white
match ExtraWhitespace /\s\+\%#\@<!$/

" F2 salvar arquivos
nmap <F2> :w<CR>
nmap <C-s> :w<Cr>
" F2 salva arquivo no modo insercao
imap <F2> <ESC>:w<CR>i
imap <C-s> <ESC>:w<CR>i
" troca  .h/.c F4
map <C-j> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
imap <C-j> <ESC>:e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>
" recria o ctags F5
map <F5> :!ctags -R *<CR>
" create doxygen comment
map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean<CR>
" goto definition with F12
map <F12> <C-]>
" new tab"
map <C-t> :tabnew<CR>
" next tab"
map <F3> :tabnext<CR>
" previous tab"
map <F4> :tabprevious<CR>
" close tab"
map <C-e> :tabclose<CR>
" cppcheck "
map <C-F7> :!cppcheck @%<CR>
" TagBar "
nmap <C-k> :TagbarToggle<CR>
" mostra coluna 80"
set cc=80
" NERDTree"
nmap <C-d> :NERDTreeToggle<CR>
imap <C-d> <ESC>:NERDTreeToggle<CR>
" ident"
map <C-K-F> mzgg=G`z
" buffer"
nmap <C-u> :bn<CR>
nmap <C-y> :bp<CR>

map } ]}
map { [{

"indentacao de acordo com o padrao
set cino=:0,:(0
set background=dark
colorscheme gruvbox
set et "espacos em vez de tab
set guifont=Liberation\ Mono\ for\ Powerline\ 11
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
