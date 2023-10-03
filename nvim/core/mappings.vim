"   COC
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" JABS
nmap <leader>b <cmd>JABS<cr>

"  Nerd Tree
nmap B <cmd>Neotree<cr>

"   Floaterm
cnoreabbrev term :FloatermNew<CR>
tnoremap <Esc> <C-\><C-n>
nmap º :FloatermToggle<CR>
