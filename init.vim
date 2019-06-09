" Go_Fight_No的Neovim配置

" 插件列表
call plug#begin('~/.local/share/nvim/plugged')

Plug 'mhinz/vim-startify'		" 小奶牛名言警句，顺带近期打开过的文档
Plug 'morhetz/gruvbox'			" 主题美化：gruvbox
Plug 'w0ng/vim-hybrid'			" 主题美化：hybrid
Plug 'vim-airline/vim-airline'		" 状态栏美化
Plug 'vim-airline/vim-airline-themes'	" 状态栏美化
Plug 'Yggdroot/indentLine'		" 显示缩进线
Plug 'scrooloose/nerdtree'		" 文件目录结构
Plug 'junegunn/fzf'			" 快速模糊文件搜索

call plug#end()

" 单独设置插件某些特性
	" 设置状态栏主题
	let g:airline_theme='gruvbox'		" 设置airline的主题
	" 设置NERDTree特性
	let NERDTreeShowHidden=1		" 显示隐藏文件
	let g:ctrlp_map = '<c-p>'		" 更改映射达到Ctrl + p 开启搜索

" 永久设置
set number		" 显示行号
set background=dark	" 背景设为黑色
colorscheme gruvbox	" 设置主题
set termguicolors	" 使用truecolor色彩
set cursorline		" 高亮当前行
set laststatus=2	" 1为不显示状态栏，2为显示
set helplang=cn		" 设置帮助文档显示中文
set ambiwidth=double	" 设置为双字宽显示，否则无法完整显示☆

" 快捷键设置
set pastetoggle=<F2>

" 映射列表
let mapleader=','
inoremap jj <Esc>`^
" 切换Buffer窗口

" 用Ctrl + h/j/k/l 或Ctrl + 上/下/左/右 来切换window窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-LEFT> <C-w>h
nnoremap <C-DOWN> <C-w>j
nnoremap <C-UP> <C-w>k
nnoremap <C-RIGHT> <C-w>l
" 配置nerdtree的映射
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :NERDTreeToggle<CR>
