
""""""""""""""""""""""""""""""Vundle"""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" go integrated ide: include goimports, godef, gotags, gocode, golint, orcale, errcheck
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'

" nerdtree
Plugin 'scrooloose/nerdtree'

" auto complete
Plugin 'Valloric/YouCompleteMe'

" neo complete
Plugin 'Shougo/neocomplete.vim'

" scheme for golang
Plugin 'fatih/molokai'

" super tab
Plugin 'ervandew/supertab'

" html css speed
Plugin 'mattn/emmet-vim'

" Simulate a split shell in vim using gnu screen or tmux 
Plugin 'ervandew/screen'

" Fast and Easy Find and Replace Across Multiple Files
Plugin 'dkprice/vim-easygrep'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" 
" http://www.oschina.net/code/snippet_574132_13357
" Plugin 'a.vim'
Plugin 'Align'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
" Plugin 'vim-javacompleteex'
" Plugin 'Mark--Karkat'
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'repeat.vim'
" Plugin 'msanders/snipmate.vim'
" Plugin 'wesleyche/SrcExpl'
Plugin 'std_c.zip'
" Plugin 'tpope/vim-surround'
" Plugin 'scrooloose/syntastic'
" Plugin 'TxtBrowser'
" Plugin 'ZoomWin'

" Command:
" \sy   Generate tags and cscope database from current directory
" \sc   Configure window (Take care of the help info the window below)
Plugin 'ccvext.vim'
" high light math-operators and braces
Plugin 'cSyntaxAfter'

" https://github.com/tikhomirov/vim-glsl:glsl
" support: opengl1.1-opengl4.3
" support: opengles1.0,opengles3.0
Plugin 'tikhomirov/vim-glsl'

" let g:polyglot_disabled = ['css']
Plugin 'sheerun/vim-polyglot'

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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮，显示行号
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:syntax on
:filetype on
:filetype plugin on
:filetype plugin indent on
:set number
:let g:go_disable_autoinstall = 0
" auto load file after have been resigned by others
:set autoread
" Ctrl + K 插入模式下光标向上移动
:imap <c-k> <Up>
" Ctrl + J 插入模式下光标向下移动
:imap <c-j> <Down>
" Ctrl + H 插入模式下光标向左移动
:imap <c-h> <Left>
" Ctrl + L 插入模式下光标向右移动
:imap <c-l> <Right>
" 启用每行超过80列的字符提示（字体变蓝并加下划线），不启用就注释掉
:au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" clipboard support
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:vmap <C-x> :!pbcopy<CR>
:vmap <C-c> :w !pbcopy<CR><CR>
" 选中状态下 Ctrl+c 复制
:vmap <C-c> "+y

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab, mouse, shift
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set helplang=cn
:set mouse=a
:set shiftwidth=4
:set expandtab
:set tabstop=4
:set softtabstop=4
:set completeopt=longest,menu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent , search, match
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set cin                    " 自动对齐需要
:set showmatch              " 设置匹配模式，显示匹配的括号
:set smartindent            " 智能对齐方式
:set incsearch              " 逐步匹配
:set hlsearch               " 高亮搜索

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hight current line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set cursorline
:hi cursorline   guibg=darkred guifg=white
:hi cursorcolumn ctermbg=darkred ctermfg=white guibg=darkred guifg=white

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 获取当前路径，将$HOME转化为~
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g") 
    return curdir 
endfunction
" :set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\
:set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle:tagsbar: map F8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle:NERDTree config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle:YouCompleteMe config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" " 允许 vim 加载 .ycm_extra_conf.py 文件不再提示
let g:ycm_confirm_extra_conf=0
" " 默认的配置文件 (~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py)，
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" " 引入 C++
" 标准库tags，这个没有也没关系，只要.ycm_extra_conf.py文件中指定了正确的标准库路径
" set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" " 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" " 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" " 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" " 语法关键字补全            
let g:ycm_seed_identifiers_with_syntax=1
" " 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'
" " 设置转到定义处的快捷键为ALT + G，这个功能非常赞
" nmap <M-g> :YcmCompleter GoToDefinitionElseDeclaration <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" " GoToDeclaration
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
" " GoToDefinition
nnoremap <leader>gt :YcmCompleter GoToDefinition<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim markdown plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  neocomplete plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vim-go plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" By default syntax-highlighting for Functions, Methods and Structs is disabled. To change it:
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
" Use this option to show the type info (|:GoInfo|) for the word under the cursor automatically
let g:go_auto_type_info = 1
" Enable goimports to automatically insert import paths instead of gofmt:
let g:go_fmt_command = "goimports"
" By default vim-go shows errors for the fmt command, to disable it:
let g:go_fmt_fail_silently = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" add system tags : ctags -R –c++-kinds=+px –fields=+iaS –extra=+q /usr/include
set tags+=~/.vim/tags
"" Do_CsTag in current dir
function Simple_Do_CsTag()
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
endfunction
function Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction
map <F10> :call Simple_Do_CsTag()<CR>

function! TabCloseRight(bang)
    let cur=tabpagenr()
    while cur < tabpagenr('$')
        exe 'tabclose' . a:bang . ' ' . (cur + 1)
    endwhile
endfunction

function! TabCloseLeft(bang)
    while tabpagenr() > 1
        exe 'tabclose' . a:bang . ' 1'
    endwhile
endfunction

command! -bang Tabcloseright call TabCloseRight('<bang>')
command! -bang Tabcloseleft call TabCloseLeft('<bang>')

" -----------------------------------------------------------------------------
"  < a.vim 插件配置 >
" -----------------------------------------------------------------------------
" 用于切换C/C++头文件
" :A     ---切换头文件并独占整个窗口
" :AV    ---切换头文件并垂直分割窗口
" :AS    ---切换头文件并水平分割窗口

" -----------------------------------------------------------------------------
"  < ccvext.vim 插件配置 >
" -----------------------------------------------------------------------------
" 用于对指定文件自动生成tags与cscope文件并连接
" 如果是Windows系统, 则生成的文件在源文件所在盘符根目录的.symbs目录下(如: X:\.symbs\)
" 如果是Linux系统, 则生成的文件在~/.symbs/目录下
" 具体用法可参考www.vim.org中此插件的说明
" <Leader>sy 自动生成tags与cscope文件并连接
" <Leader>sc 连接已存在的tags与cscope文件

" -----------------------------------------------------------------------------
"  < cSyntaxAfter 插件配置 >
" -----------------------------------------------------------------------------
" 高亮括号与运算符等
au! BufRead,BufNewFile,BufEnter *.{c,cpp,h,java,javascript,go} call CSyntaxAfter()


