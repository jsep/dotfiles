
syntax on                           " Enable syntax highlighting.
filetype plugin indent on           " Enable file type based indentation.

set autoindent                      " Respect indentation when starting a new line.
set expandtab                       " Expand tabs to spaces. Essential in Python.
set tabstop=4                       " Number of spaces tab is counted for.
set shiftwidth=4                    " Number of spaces to use for autoindent.

set backspace=2                     " Fix backspace behavior on most terminals.

"colorscheme delek                   " Change a colorscheme.

"set clipboard+=unnamedplus          " Support for system clipboard

" Set up swap directory
set undofile
if !isdirectory(expand("$HOME/.vim/swap"))
  call mkdir(expand("$HOME/.vim/swap"), "p")
endif
set directory=$HOME/.vim/swap//

" Set up persistent undo across all files.
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
  call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

"Navigation

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string,
                                " then open the wildmenu.
" Plugins
packloadall           " Load all plugins.
silent! helptags ALL  " Load help files for all plugins.

" Insert
imap jk <Esc>
imap kj <Esc>
