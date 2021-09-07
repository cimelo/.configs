" Test
" Tab Control
map <A-j> :tabn<CR>
map <A-k> :tabp<CR>
map <A-,> :tabm -1<CR>
map <A-.> :tabm +1<CR>
map <A-Tab> g<Tab><CR>
map <unique> <A-1> 1gt
map <unique> <A-2> 2gt
map <unique> <A-3> 3gt
map <unique> <A-4> 4gt
map <unique> <A-5> 5gt
map <unique> <A-6> 6gt
map <unique> <A-7> 7gt
map <unique> <A-8> 8gt
map <unique> <A-9> 9gt
map <unique> <A-0> 10gt

" End session
map <A-q> :tabc<CR>
map <A-s> :mksession! <Bar> wa<CR>
map <A-S> :wqa<CR>
map <A-Q> :qa<CR>

" Terminal Section
map <A-r> :execute "tabe %" <Bar> terminal compiler.sh %:p r <CR> ZQ <CR>
map <A-c> :execute "tabe %" <Bar> terminal compiler.sh %:p c <CR> ZQ <CR> <Bar> :tabp <CR>
map <C-A-r> :source $HOME/.config/nvim/init.vim<CR>
map <A-t> :tabe <Bar> terminal <CR> a
nnoremap <leader>r :s/\<<C-r><C-w>\>//g<left><left>
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<left><left>

" Miscelaneous
map <A-i> gg O<CR><Esc> :call Shebang()<CR>

" Terminal-Mode
tnoremap <Esc> <C-\><C-n>
tnoremap <A-w> <C-\><C-n>:bd!<CR>

" Functions
fun Shebang() 
	if !empty(&ft)
		exe '1s/.*/#!\/usr\/bin\/' .&ft
	endif
endfun
