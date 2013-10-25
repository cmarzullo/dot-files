if &term =~ "xterm"
	" Set the Colors to 256
	set t_Co=256
        " If the set worked set the colorscheme
        if &t_Co == 256
                colorscheme xoria256
        endif
endif

if has ("autocmd")
  filetype indent on
endif

set sw=2 " no of spaces for indeting
set ts=2 " show \t as 2 spaces and \t when deleting
