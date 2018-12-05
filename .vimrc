" Functions:

" Toggle light/dark theme
function Toggle_theme()
  if !has("gui_running")
    if &background ==# "light"
      set background=dark
      highlight Normal ctermfg=white ctermbg=black
    else
      set background=light
      highlight Normal ctermfg=black ctermbg=231
    endif
  endif
endfunction

" General settings

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
set title                 " Set the title of the console to the document name
set backspace=indent,eol,start " Make backspace behave properly
filetype plugin on        " Enable filetype specific options to be located in separate files
syntax enable             " Enable syntax


set ignorecase            " Disable case-sensitive search
set smartcase             " Enable case-sensitive search only when searching for word with uppercase character
set hlsearch              " Enable highlight when searching
set incsearch             " Enable start search for word immediately

set wildmenu              " Enable the wildmenu when typing commands

" Syntax
au BufRead,BufNewFile *.scala setfiletype scala
au BufRead,BufNewFile *.dart setfiletype dart

" Console-only options:
if !has("gui_running")

  " Set the terminal window back to normal size after vim exit
  autocmd VimLeave * !resize -s 24 80

  " Set vim to start in light theme
  call Toggle_theme()
  call Toggle_theme()

endif

" Key mappings:

" Access å, ä and ö with english keyboard
inoremap {{{ <C-k>a@
inoremap """ <C-k>a"
inoremap ::: <C-k>o:

" Map leader to space
nnoremap <Space> <Nop>
let mapleader = " "

" Leave insert mode with two quick presses of j
imap jj <ESC>

" Map F2 to follow link
map <F2> <C-]>

" Map F3 to toggle light/dark theme
map <F3> :call Toggle_theme()<Enter>

" Map F4 to toggle cursor highlighting
map <F4> :set cursorline! cursorcolumn!<Enter>

" Map Y to work like C and D
nnoremap Y y$
