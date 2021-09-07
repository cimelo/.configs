augroup vimrc
	  " Remove all vimrc autocommands
	  autocmd!
		autocmd BufWritePost $HOME/builds/dwmblocks/blocks.h, $HOME/builds/dwmblocks/blocks.def.h !cd $HOME/builds/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
		autocmd BufWritePost $HOME/Programs/dwm/config.h,$HOME/Programs/dwm/config.def.h !cd $HOME/Programs/dwm; sudo make install && kill -HUP $(pgrep dwm)
		autocmd BufWritePost $HOME/.config/sxhkd/sxhkdrc !killall -USR1 -q sxhkd
		autocmd BufWritePost $HOME/.config/nvim/* !cp % $HOME/builds/.configs/nvim/%:t
		autocmd BufWritePost $HOME/.config/sxhkd/* !cp % $HOME/builds/.configs/sxhkd/%:t
augroup END
