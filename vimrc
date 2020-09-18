" 
" __        ___  ____  __  _      __     _____ __  __ ____   ____ 
" \ \      / / |/ /\ \/ / ( )___  \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ /\ / /| ' /  \  /  |// __|  \ \ / / | || |\/| | |_) | |    
"   \ V  V / | . \  /  \    \__ \   \ V /  | || |  | |  _ <| |___ 
"    \_/\_/  |_|\_\/_/\_\   |___/    \_/  |___|_|  |_|_| \_\\____|
"                                                                 
" 
" 


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'  " copy the strings after the  www.github.com/
Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
" to install nodejs and yarn, see
" https://riptutorial.com/node-js/example/29249/yarn-installation
" Install Node.js if not already installed:
" curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
" Install Yarn
" wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
" yum install yarn
" " If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" Asyncrun
Plug 'skywind3000/asyncrun.vim'

call plug#end()

" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = ""
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = ""
let NERDTreeMapOpenInTab = ""
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = ""
let NERDTreeMapChangeRoot = ""


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"
" let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'  "设置全局配置文件的路径   ~/.ycm_extra_conf.py
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
let g:ycm_confirm_extra_conf=0  " 打开vim时不再询问是否加载ycm_extra_conf.py配置
" let g:ycm_key_invoke_completion = '<C-a>' " ctrl + a 触发补全
" set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

" snazzy settings
color snazzy
" color default
let g:SnazzyTransparent = 1 


" ===
" === vim-table-mode
" ===
map <LEADER>tm :TableModeToggle<CR>

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


syntax on
noremap s <nop>

map W :w<CR>
map Q :q!<CR>
map S :wq<CR>
map R :source $MYVIMRC<CR>

" let mapleader=" "
" map <LEADER><CR> :nohl<CR>

map <Space><CR> :nohl<CR>

" set mouse=a
set nocompatible
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
set number
" set norelativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map J 5j
map K 5k
map H 5h
map L 5l

map <F2> :set relativenumber!<CR>     "open or close relativenumber
map <A-s> :set spell!<CR>             "open or close spelling check

" find somthing by /, then using the - and = key to search next or previous
noremap - nzz 
noremap = Nzz


map s<Right>   :set splitright<CR>:vsplit<CR>
map s<Left>    :set nosplitright<CR>:vsplit<CR>
map s<Up>      :set nosplitbelow<CR>:split<CR>
map s<Down>    :set splitbelow<CR>:split<CR>


"map <LEADER><Right> <C-w>l
"map <LEADER><Left> <C-w>h
"map <LEADER><Up> <C-w>k
"map <LEADER><Down> <C-w>j

map <Space><Right>  <C-w>l
map <Space><Left>   <C-w>h
map <Space><Up>     <C-w>k
map <Space><Down>   <C-w>j


map <C-Right>     :vertical resize+5<CR>
map <C-Left>      :vertical resize-5<CR>
map <C-Up>        :res+5<CR>
map <C-Down>      :res-5<CR>

" To start a new page
map T   :tabe<CR> 
map <   :tabnext<CR>
map >   :tabprevious<CR>

" key s+v : split from horizon to vertical
map sv  :<C-w>t<C-w>H

" key s+h : split from vertical to horizon
map sh  :<C-w>t<C-w>k 



map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python3 %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 

" let &t_EI = '\<Esc>]50;CursorShape=0\x7'
" let &t_SI = '\<Esc>]50;CursorShape=1\x7'
" let &t_SR = '\<Esc>]50;CursorShape=2\x7'




