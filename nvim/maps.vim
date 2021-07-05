"----------keymapping--------------------
" leader key
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

let mapleader = " "

" easymotion
nmap <leader>b <Plug>(easymotion-s2)
nmap <leader>ss <Plug>(easymotion-t2)
nmap <leader>t <Plug>(easymotion-overwin-w)

"nerdtree
nmap <leader>ne :NERDTreeToggle<CR>
nmap <leader>nt :NERDTreeFind<CR>
vmap <leader>; <plug>NERDCommenterToggle
nmap <leader>; <plug>NERDCommenterToggle

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
nnoremap <Leader>TT :TestSuite<CR>

nmap <leader>f :Telescope find_files<CR>

 "go to"
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <Tab>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <S-Tab>     compe#scroll({ 'delta': -4 })

" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.

nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
