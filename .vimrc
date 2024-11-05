" Tyellow vimrc
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-dispatch'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'vim-airline/vim-airline-themes'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
call plug#end()


set guifont=JetBrains\ Mono:h18.5
highlight Comment cterm=italic

colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts=1
let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = '%f'
let g:airline_section_c = ''
let g:airline_section_x = '%{getfsize(expand("%"))}'
let g:airline_section_y = '%p%%'
let g:airline_section_z = '%l:%c'
let g:airline_extensions = []


nnoremap <leader>f :set hlsearch!<CR>
nmap <leader>b :w<CR>:Dispatch g++-14 -std=c++17 -O3 -o %<.out % && ./%<.out && rm ./%<.out<CR>
nnoremap <F9> :r /Users/tyson/template.cpp<CR>
inoremap jk <esc>
vmap jk <esc>
nnoremap <C-/> :s/^/\/\/ /<CR>
nnoremap <C-.> :s/^\/\/ // <CR>
nnoremap <leader>w :vsplit<CR>:wincmd l<CR>:edit /Users/tyson/output.txt<CR>:split /Users/tyson/input.txt<CR>
nnoremap <leader>v :edit ~/.vimrc<CR>
nnoremap <leader>f :set hlsearch!<CR>
nnoremap <leader>d :AbortDispatch<CR>
noremap <D-f> <nop>
nnoremap <leader>lg :!lazygit<CR>

set nowrap
set timeout
set timeoutlen=500
set noshowmode
syntax enable
set mousehide
set guioptions=aAce
set autoread
autocmd CursorHold * checktime
autocmd BufEnter * if getfsize(expand("%")) > 0 | silent! edit | endif
autocmd InsertLeave * silent! write
autocmd FocusLost * silent! write
autocmd WinLeave * silent! write
set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set backspace=2
set cursorline
set number
set relativenumber
set smartcase
set hlsearch
set incsearch
set scrolloff=5
set confirm
set showcmd
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set cindent
set laststatus=2
set ruler
set langmenu=en_US.UTF-8
language messages en_US.UTF-8
set guioptions=
set autoread
autocmd CursorHold * checktime
set title
set titlestring=Tyellow\ vim
set nobackup
set noswapfile
set nowritebackup
let g:AutoPairsMapBS = 0
let g:nord_cursor_line_number_background = 1
let g:nord_bold = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_bold_vertical_split_line = 1
highlight clear SpellBad
highlight clear Error
highlight clear ALEErrorSign
let g:auto_save = 1
