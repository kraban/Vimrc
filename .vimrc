set scrolloff=4 					" Set the number of lines left before the screen scrolls
set ruler 								" Set the cursor position to always active
set tabstop=2 						" Set the number of whitespaces a tab will generate
set mouse=a 							" Enables mouse 
set lines=50 columns=100  " Sets the size of the editor
set autoindent						" Enables auto indent
set number								" Enables line number

autocmd VimLeave * !resize -s 24 80
																		" Set the terminal window back to normal size after vim exit

imap jj <ESC>
							" Leave insert mode with two quick presses of j
