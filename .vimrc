if &term =~ "xterm"
	" Set the Colors to 256
	set t_Co=256
   " If the set worked set the colorscheme
   if &t_Co == 256
     colorscheme xoria256
   endif
endif

if has ("autocmd")

  " Enable editing of gzipped files
  "     read: set binary mode before reading the file
  "     uncompress text in buffer after reading
  "     write: compress file after writing
  "     append: uncompress file, append, compressfile
  autocmd BufReadPre,FileReadPre    .photoidx set noexpandtab
  autocmd BufReadPre,FileReadPre    *.gz set bin 
  autocmd BufReadPost,FileReadPost  *.gz '[,']!gunzip
  autocmd BufReadPost,FileReadPost  *.gz set nobin 
  

  filetype plugin indent on
endif

set tabstop=2    " show \t as 2 spaces and \t when deleting
set shiftwidth=2 " no of spaces for indeting
set noexpandtab
