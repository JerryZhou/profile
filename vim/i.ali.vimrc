let mapleader=";"

"""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

""""""""
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
Plugin 'kien/ctrlp.vim'

""""""""
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
Plugin 'Valloric/YouCompleteMe'

""""""""
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
Plugin 'rking/ag.vim'

""""""""
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
Plugin 'bling/vim-airline'

""""""""
" http://www.zlovezl.cn/articles/vim-plugins-cannot-live-without/
Plugin 'majutsushi/tagbar'

""""""""
" http://www.zlovezl.cn/articles/my-vim-plugins-for-python/
Plugin 'scrooloose/nerdtree'

""""""""
" http://www.zlovezl.cn/articles/my-vim-plugins-for-python/
Plugin 'jistr/vim-nerdtree-tabs'

""""""""
" http://www.zlovezl.cn/articles/my-vim-plugins-for-python/
Plugin 'ervandew/supertab'

""""""""
" https://github.com/fatih/vim-go
Plugin 'fatih/vim-go'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

""""""""""""""""""""""" Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'


""""""""""""""""""""""" Plugin 'Valloric/YouCompleteMe'
" 设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发补全的字符大小设置为 3
let g:ycm_min_num_of_chars_for_completion = 3
" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview


""""""""""""""""""""""" Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""" Plugin 'scrooloose/nerdtree'
map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件

""""""""""""""""""""""" Plugin 'jistr/vim-nerdtree-tabs'
" let g:nerdtree_tabs_open_on_console_startup=1       "设置打开vim的时候默认打开目录树
" map <leader>n <plug>NERDTreeTabsToggle <CR>         "设置打开目录树的快捷键
nmap <F2> :NERDTreeTabsToggle<CR>


""""""""""""""""""""""" Plugin 'fatih/vim-go'
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_auto_type_info = 1

" http://duteng.github.io/blog/2014/09/25/vim-introduction-and-configuration/
"基本配置
syntax on                   " 自动语法高亮
set wrap                    " 设置自动换行
set nocompatible            " 关闭 vi 兼容模式
set number                  " 显示行号
set nocursorline            " 不突出显示当前行
set nobackup                " 覆盖文件时不备份
set autochdir               " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes          " 设置备份时的行为为覆盖
set autoread                " set to auto read when a file changed from the outside
set ignorecase smartcase    "搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
set nowrap                  " 不自动换行
set magic                   " 显示括号配对情况
set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由vim 负责保存
set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldclose=all           " 设置为自动关闭折叠
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 "编码设置

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\

set tabstop=4
set smarttab
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set expandtab               " 禁掉tab

set mouse=a                 " 开启Mouse 支持


