" idea vim
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
nmap <leader>ts :tabs<CR>
nmap <leader>tn :tabnew<CR>
nmap <leader>tr :tabp<CR>
nmap <leader>ty :tabn<CR>
nmap <leader>tc :tabc<CR>
"  ----------查找----
map <leader>v vaw
map <leader>d daw
map <leader>y yaw
map ' "
map ; :
"  ----------保存----
map - $
map 0 ^
nmap <leader>s :w<CR>
nmap <leader>u <C-R>
nmap <C-C> "1y
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
nnoremap <leader>S <C-W>s
nnoremap <leader>V <C-W>v
nnoremap <leader>o <C-W>o
 
"  ---------------------------- 其他 -----------------------

