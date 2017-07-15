set scrolloff=4           " Set the number of lines left before the screen scrolls
set ruler                 " Set the cursor position to always active
set tabstop=2             " Set the number of whitespaces a tab will show
set softtabstop=2         " Set the number of whitespaces a tab will generate 
set expandtab             " Set tabs to generate whitespaces
set mouse=a               " Enable mouse 
set lines=50 columns=100  " Set the size of the editor
set autoindent            " Enable auto indent
set number                " Enable line number
set nowrap                " Disable line wrap

set ignorecase            " Disable case-sensitive search
set smartcase             " Enable case-sensitive search only when searching for word with uppercase character
set hlsearch              " Enable highlight when searching
set incsearch             " Enable start search for word immediately
highlight Normal ctermfg=black ctermbg=231 " Set normal text to black and background to white (231)
set background=light      " Set background to light for vim to know how to syntax highlight

" Set the terminal window back to normal size after vim exit
autocmd VimLeave * !resize -s 24 80

" Leave insert mode with two quick presses of j
imap jj <ESC>

" File specific preferences
autocmd Filetype python set tabstop=4 softtabstop=4
