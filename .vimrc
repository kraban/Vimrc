set scrolloff=4           " Set the number of lines left before the screen scrolls
set scrolljump=3          " Set the number of lines to jump when reaching end of screen
set ruler                 " Set the cursor position to always active
set tabstop=2             " Set the number of whitespaces a tab will show
set softtabstop=2         " Set the number of whitespaces a tab will generate 
set shiftwidth=0          " Set number of spaces when indenting with '<' and '>' to equal tabstops
set expandtab             " Set tabs to generate whitespaces
set mouse=a               " Enable mouse 
set lines=50 columns=100  " Set the size of the editor
set autoindent            " Enable auto indent
set number                " Enable line number
set nowrap                " Disable line wrap
set showmode              " Always show current mode
set virtualedit=all       " Enable the cursor to move to positions without characters
set showmatch             " Set the cursor to make a quick jump to matching (, { and [ when typed
set matchtime=3           " Set the jumptime for 'showmatch' to 3 tenths of a second
set showcmd               " Show incomplete command at bottom row when typing them
set iskeyword+=-          " Make dash '-' part of words, for commands like 'w' and 'b'

set ignorecase            " Disable case-sensitive search
set smartcase             " Enable case-sensitive search only when searching for word with uppercase character
set hlsearch              " Enable highlight when searching
set incsearch             " Enable start search for word immediately

set wildmenu              " Enable the wildmenu when typing commands


" Console-only options
if !has("gui_running")

  " Set the terminal window back to normal size after vim exit
  autocmd VimLeave * !resize -s 24 80

highlight Normal ctermfg=black ctermbg=231 " Set normal text to black and background to white (231)
set background=light      " Set background to light for vim to know how to syntax highlight

endif

" Leave insert mode with two quick presses of j
imap jj <ESC>

" Map F2 to follow link
map <F2> <C-]>

" File specific preferences
autocmd Filetype python set tabstop=4 softtabstop=4
