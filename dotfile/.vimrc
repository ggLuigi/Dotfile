inoremap jk <ESC>

" map <leader> to ","
let mapleader = ","
let g:mapleader = ","

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" paste with space in front
nnoremap <leader>p a<space><esc>p
" visual paste without yanking
vnoremap p "_dP

" map F7 for format basic json
" map F8 for format inner json
nnoremap <F7> :%!jq <CR>
nnoremap <F8> :%s/\\"/"/g <bar> %s/"\({\<bar>\[\)/\1/g <bar> %s/\(}\<bar>\]\)"/\1/g <bar> %s/\\\\"/"/g <bar> %!python -m json.tool<CR>

" d => delete
" <leader> d => cut
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d
nnoremap <leader>dd ""dd

" set highlight color (:h hi)
hi Search cterm=NONE ctermfg=white ctermbg=blue
hi Visual cterm=NONE ctermfg=cyan ctermbg=brown
hi DiffAdd cterm=NONE ctermfg=brown ctermbg=red

" vim-plug section
call plug#begin('~/.vim/plugged')

" The powerline on the bottom of vim - https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
set laststatus=2

" yaml ansible syntax plugin - https://github.com/pearofducks/ansible-vim
Plug 'pearofducks/ansible-vim'

" onehalf theme - https://github.com/sonph/onehalf/blob/master/vim/README.md
" git clone --depth 1 --filter=blob:none --sparse https://github.com/sonph/onehalf.git
" cd onehalf
" git sparse-checkout vim
" cp -r vim/autoload/* ~/.vim/autoload/
" cp -r vim/colors ~/.vim/
Plug 'sonph/onehalf', { 'rtp': 'vim' }
syntax on
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }

" log highlighting - https://github.com/MTDL9/vim-log-highlighting
Plug 'mtdl9/vim-log-highlighting'

" Initialize plugin system
call plug#end()

