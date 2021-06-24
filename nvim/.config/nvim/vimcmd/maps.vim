"----------keymapping--------------------
" leader key
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let mapleader = " "

"lsp
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

" easymotion
nmap <leader>b <Plug>(easymotion-s2)
nmap <leader>ss <Plug>(easymotion-t2)
nmap <leader>t <Plug>(easymotion-overwin-w)

"nerdtree
nmap <leader>ne :NERDTreeToggle<CR>
nmap <leader>nt :NERDTreeFind<CR>

" greates remap ever 
vnoremap <leader>p "_dP

"nvim 
nmap <leader>w :w!<CR> 
nmap <leader>q :q<CR> 
" nmap <leader>x :wq<CR>
nmap <leader>h <C-h><CR>
nmap <leader>e <C-l><CR>

nnoremap <leader>fs <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"Esc on map
":imap ii <Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>e :wincmd l<CR>

" git things IMPORTANT
nnoremap <leader>gs :G<CR>
nnoremap <leader>gn :Gcommit<CR>
nnoremap <leader>ga :G add --all<CR>
nnoremap <leader>gpm :Gpush -u origin master<CR>
nnoremap <leader>gps :Gpush -u origin
nnoremap <leader>gpl :Gpush<CR> 
nnoremap <leader>gh :diffget //2<CR>
nnoremap <leader>ge :diffget //3<CR>

"jump lines
nmap <leader>f 0

"select the complete line
nmap <leader>v V

" ranger 
nmap <leader>ra :RnvimrToggle<CR>

" tabs
nmap <leader>a :tabprevious<CR>

" run things
nmap <leader>rp :!python<CR>
nmap <leader>rn :!node
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
