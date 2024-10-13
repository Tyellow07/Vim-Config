" 設定字體為 JetBrains Mono 大小 19.5
set guifont=JetBrains\ Mono\ Medium:h19.5

" 開始插件區塊
call plug#begin('~/.vim/plugged')

" 安裝 delimitMate 插件
Plug 'Raimondi/delimitMate'

" 安裝 vim-dispatch 插件
Plug 'tpope/vim-dispatch'

" 安裝 Nord 主題
Plug 'arcticicestudio/nord-vim'

" 安裝 vim-airline 和其主題
Plug 'vim-airline/vim-airline-theme'
Plug 'vim-airline/vim-airline'

" 結束插件區塊
call plug#end()

" 設定顏色主題
colorscheme nord
let g:airline_theme='nord'
let g:airline_powerline_fonts=1

" 配置 airline 顯示格式，使用圖塊的 < 隔開
let g:airline_section_a = airline#section#create(['mode'])                          " 顯示模式 (NORMAL, INSERT 等)
let g:airline_section_b = '%f'                                                   " 顯示檔案名稱
let g:airline_section_c = ''                                                     " 保持空白
let g:airline_section_x = '%{getfsize(expand("%"))}'      " 使用圖塊的 < 隔開格式、編碼和類型
let g:airline_section_y = '%p%%'                                                 " 顯示進度百分比
let g:airline_section_z = '%l:%c'                                                " 顯示行號:列號

" 禁用內建模式顯示
set noshowmode

" 禁用所有擴展功能
let g:airline_extensions = []

" 啟用語法高亮
syntax enable

" 設定編譯和運行 C++ 程式的快捷鍵
nmap <leader>/ :w<CR>:Dispatch g++-14 -std=c++17 -o a.out % && ./a.out && rm ./a.out<CR>

" 設定滑鼠隱藏
set mousehide

" 設定 GUI 選項
set guioptions=aAce
set notitle
set titlestring=

" 自動檢查檔案更新
set autoread
autocmd CursorHold * checktime
autocmd BufEnter * if getfsize(expand("%")) > 0 | silent! edit | endif

" 自動儲存檔案
autocmd InsertLeave * silent! write
autocmd FocusLost * silent! write
autocmd WinLeave * silent! write

" 載入模板檔案的快捷鍵 (F9)
nnoremap <F9> :r /Users/tyson/template.cpp<CR>

" 使用 UTF-8 編碼
set encoding=utf-8
set fileencoding=utf-8

" 讓滑鼠在插入模式下正常使用
set mouse=a

" 設定 Backspace 行為
set backspace=2

" 顯示游標所在的行
set cursorline

" 顯示行號
set number

" 搜尋相關設置
set smartcase                     " 智能大小寫搜索
set hlsearch                      " 高亮搜索結果
set incsearch                     " 增量搜索

" 保留滾動時的行數
set scrolloff=5

" 啟用確認功能
set confirm

" 開啟指令暫存提示
set showcmd

" 使用 jk 代替 esc
inoremap jk <esc>
vmap jk <esc>

" 設定 Tab 和縮排寬度
set tabstop=4                     " 實際制表符寬度
set softtabstop=4                 " 變換制表符寬度
set shiftwidth=4                   " 自動縮排寬度
set smartindent                    " 智能縮排

" 啟用自動縮排
set autoindent
set cindent

" 開啟狀態行
set laststatus=2

" 顯示當前行號和列號
set ruler

" 設置語言為英文
set langmenu=en_US.UTF-8
language messages en_US.UTF-8

" ===== delimitMate 配置開始 =====
let g:delimitMate_expand_cr = 1         " 按下回車時自動補全
let g:delimitMate_jump_out = 1          " 允許通過按下 tab 鍵跳出配對的括號
let g:delimitMate_fast_wrap = 1         " 快速包裝
let g:delimitMate_match_pairs = [
      \ '(', ')',
      \ '[', ']',
      \ '{', '}',
      \ '"', '"',
      \ ''' , '''
      \ ]
" ===== delimitMate 配置結束 =====

" 設定 Ctrl + / 進行註解
nnoremap <C-/> :s/^/\/\/ /<CR>    " 對於 C/C++ 的註解
nnoremap <C-.> :s/^\/\/ // <CR>   " 取消註解

" 使用 leader + w 先左右分割再上下分割並開啟 input.txt 和 output.txt
nnoremap <leader>w :vsplit<CR>:wincmd l<CR>:edit /Users/tyson/output.txt<CR>:split /Users/tyson/input.txt<CR>

" 使用 leader + v 快捷鍵開啟 vimrc
nnoremap <leader>v :edit ~/.vimrc<CR>

" 在 MacVim 中隱藏滾動條
set guioptions-=r  " 隱藏右側滾動條
set guioptions-=l  " 隱藏左側滾動條
set guioptions-=b  " 隱藏下方滾動條
set guioptions=

" 自動重新加載文件
set autoread
autocmd CursorHold * checktime

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" 使用 leader + f 取消搜尋高亮
nnoremap <leader>f :set hlsearch!<CR>

" 設定標題顯示
set title
set titlestring=I\ am\ just\ a\ fish

" ===== 新增: 使用 leader + d 取消 vim-dispatch 任務 =====
nnoremap <leader>d :AbortDispatch<CR>

noremap <D-f> <nop>


