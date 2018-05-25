" vim-plug 安装插件;;
"  curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  ---------------------------- 插件设置 -----------------------
call plug#begin('~/.vim/plugged')

" v键扩展选择
Plug 'terryma/vim-expand-region'

" snip
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<c-b>"

" 用delimitMate来自动补全后大括号
Plug 'Raimondi/delimitMate'

" 主题
Plug 'altercation/vim-colors-solarized'
" Plug 'tomasr/molokai'
" Plug 'vim-scripts/phd'
" Plug 'Lokaltog/vim-powerline'
syntax enable
" colorscheme solarized
set background=light

" FZF
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '~40%' }
let g:ackprg = 'ag --nogroup --nocolor --column'

Plug 'kshenoy/vim-signature'
Plug 'suan/vim-instant-markdown'
" 开启保存 undo 历史功
Plug 'sjl/gundo.vim'
" undo 历史保存路径
set undodir=~/.undo_history/
set undofile
Plug 'easymotion/vim-easymotion'
" NERD-tree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
" autocmd vimenter * NERDTree
let g:NERDTreeShowIgnoredStatus = 1
let g:nerdtree_tabs_open_on_console_startup=0
map <C-n> :NERDTreeToggle<CR>
map ;; :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" 代码，引号，路径补全
" Plug 'Valloric/YouCompleteMe'
" YCM的自动补全触发器只考虑当前行。 较好的补救办法是手动设置一下触发器，在~/.vimrc中添加：
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }
" 跳转函数
" nmap <leader>dd :YcmCompleter GoToDeclaration <CR>
" nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR> 
" 开启 YCM 标签引擎
" noremap <s-n> <s-n>zz
" let g:ycm_collect_identifiers_from_tags_files=1
" OmniCppComplete 的默认补全快捷键为 <C-x><C-o>, 由外部设置成cmd+d

" 语法高亮，检查
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
let g:ale_linters = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'css': ['stylelint'],
\}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '▶'
nmap <silent> <C-,> <Plug>(ale_previous_wrap)
nmap <silent> <C-.> <Plug>(ale_next_wrap)

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'

" emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-z>'
" Emmet快捷键<c-y>/可以注释当前HTML Tag，我把它映射成了更通用的注释快捷键Ctrl+/：
" autocmd filetype *html* imap <c-_> <c-y>/
" autocmd filetype *html* map <c-_> <c-y>/
let g:user_emmet_settings = {
       \ 'javascript.jsx' : {
        \ 'extends' : 'jsx',
      \ },
       \ }

" css 3
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
augroup VimCSS3Syntax
autocmd!
autocmd FileType css setlocal iskeyword+=-
augroup END

" javascript
Plug 'pangloss/vim-javascript'
Plug 'marijnh/tern_for_vim'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let javascript_enable_domhtmlcss = 1
set foldmethod=syntax
set conceallevel=1

" React
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
nmap <leader>p :PrettierAsync<CR>
nmap <C-X><C-P> :PrettierAsync<CR>
" max line length that prettier will wrap on
" Prettier default: 80
" let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

Plug 'scrooloose/nerdcommenter'

call plug#end()

"  ---------------------------- 插件设置结束 -----------------------


"  --------------------------- set -----------------------

let g:syntastic_javascript_checkers = ['eslint']
set rtp+=~/.fzf	
set laststatus=2 " 总是显示状态栏
set encoding=utf-8
set nobackup "取消备份
set noswapfile
set nocompatible "关闭兼容
set showmode "左下角显示当前 vim 模式
set ruler " 显示光标当前位置
set number " 开启行号显示
set tabpagemax=15
" set hlsearch " 高亮显示搜索结果
" set nowrap " 禁止折行
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
syntax enable " 开启语法高亮功能
syntax on " 允许用指定语法高亮配色方案替换默认方案
filetype indent on " 自适应不同语言的智能缩进
set expandtab " 将制表符扩展为空格
set tabstop=2 " 设置编辑时制表符占用空格数
set shiftwidth=2 " 设置格式化时制表符占用空格数
set softtabstop=2 " 让 vim 把连续数量的空格视为一个制表符
set nofoldenable " 启动 vim 时关闭折叠代码
filetype on
filetype plugin on
"  ---------------------------- map -----------------------
let mapleader=" "
map ] :%s//gc<left><left><left>
nmap <C-J> ddp
nmap <C-K> ddkP
nnoremap <leader>K ddpJ
nnoremap <leader>J J
nmap <leader>; A;<Esc>
nmap <leader>, A,<Esc>
nmap <leader>' A'<Esc>
"  ----------tab----
nmap ;y :tabs<CR>
nmap ;t :tabnew<CR>
nmap ;e :tabp<CR>
nmap ;r :tabn<CR>
nmap ;q :tabc<CR>
"  ----------查找----
nmap [ :
nmap ;A :w<CR>:Ack 
nmap ;l :w<CR>:Ag <CR>
nmap ;f :w<CR>:FZF <CR> 
nmap ;c :w<CR>:Command <CR> 
nmap ;G :w<CR>:GFiles <CR> 
nmap ;' :w<CR>:GFiles? <CR> 
nmap ;y "9y
nmap ;Y "9Y
nmap ;p "9p
"  ----------保存----
map - $
map 0 ^
nmap <leader>s :w<CR>
nmap <leader>u <C-R>
nnoremap <leader>z :GundoToggle <CR>
"  ----------屏幕保存中间----
map K zz14kzz
map J zz14jzz
" nnoremap <esc> :noh<cr>zz
" noremap j gjzz
" noremap k gkzz
" noremap n nzz
" noremap * *zz
" noremap # #zz
" noremap <c-o> <c-o>zz
" noremap <c-i> <c-i>zz
"  ----------分屏----
nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>q <C-W>q
nnoremap <leader>ws <C-W>s
nnoremap <leader>wv <C-W>v
nnoremap <leader>wo <C-W>o
"  ----------注释----
"默认情况下在注释分隔符后添加空格
let g:NERDSpaceDelims = 1
"使用精简语法进行批准多行注释
let g:NERDCompactSexyComs = 1
"将符合行的注释分隔符对齐而不是按照代码缩进
let g:NERDDefaultAlign = 'left'
"默认设置一种语言以使用其替代分隔符
let g:NERDAltDelims_java = 1
"添加您自己的自定义格式或覆盖默认值
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"允许评论和反转空行（在评论某个地区时很有用）
let g:NERDCommentEmptyLines = 1
"取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1
map <leader>m <leader>c<space>
map <c-_> <leader>c<space>
"  ----------系统----
nmap <leader><leader>pi :PlugInstall <CR>
nmap <leader><leader>ps :PlugStatus <CR>
"markdown浏览器实时预览,需要装node: sudo npm -g install instant-markdown-d
nmap <leader>qm :InstantMarkdownPreview <CR>
nmap <leader>qbf :setlocal buftype=
"  ---------------------------- 其他 -----------------------
" ----- 按一次 v 选择一个字符,再按一次 v 自动扩展选择一个单词
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" 通过以下的配置可以避免缓冲区的内容被删除的文本内容所覆盖（放到~/.vimrc文件的最后）
" function! RestoreRegister()
"   let @" = s:restore_reg
"   return ''
" endfunction
" function! s:Repl()
"   let s:restore_reg = @"
"   return "p@=RestoreRegister()<cr>"
" endfunction
" vmap <silent> <expr> p <sid>Repl()

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
  endfunction
  
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存快捷键
map <leader><leader>s :mksession! .vimsession<cr> :wviminfo! .viminfo<cr>
" 恢复快捷键
map <leader><leader>r :source .vimsession<cr> :rviminfo .viminfo<cr>
