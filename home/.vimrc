" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
" .vimrc config by marcosdly.
" Check marcosdly/dotfiles on GitHub.

" Reference to the basic configuration:
" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" OPTIONS {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Make commands case insensitive
set ignorecase

" Set smartcase (use \c or \C to ser case sensitiveness)
" /IgNoReCaSe\c to ignore case, /ignorecase\C to make the text case sensitive
set smartcase

" Case-insensitive file paths
set wildignorecase

" Fix kitty black bars on vim
let &t_ut=''

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
" set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
" set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
" set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" }}}

" PLUGINS {{{

call plug#begin('~/.vim/plugged')	

	" Themes
	Plug 'dracula/vim', { 'as': 'dracula' } 
	Plug 'dikiaap/minimalist'
	Plug 'wojciechkepka/vim-github-dark', { 'as': 'ghdark' }
	Plug 'gosukiwi/vim-atom-dark', { 'as': 'atom-dark' }
	Plug 'rakr/vim-one' 
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" Funcionality
	Plug 'sheerun/vim-polyglot'
	Plug 'christoomey/vim-system-copy'
	Plug 'preservim/nerdtree'
	Plug 'vim-scripts/bufexplorer.zip'
	Plug 'tpope/vim-commentary'

call plug#end()

" Set color scheme. It needs to be placed here because
" it can be installed via plugin.
colorscheme one

" }}}

" AIRLINE {{{

" General
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ' '
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ' '

" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Theme
" Set theme with 'AirlineTheme <theme>'
" Actual theme: wombat
let g:airline_theme = 'one'

" Symbols
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' L:'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.colnr = ' C:'

" Section edit
let g:airline_section_error = ''
let g:airline_section_warning = ''

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" }}}

" MAPPINGS {{{

" Set the backslash as the leader key.
let mapleader = '\'

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Buffer
" Close the current buffer
nnoremap <leader>bd :bdelete<cr>:tabclose<cr>gT

" Close all the buffers
nnoremap <leader>ba :bufdo bd<cr>

" Next, Previous
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>

" }}}

" VIMSCRIPT {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
	autocmd WinLeave * set nocursorline
	autocmd WinEnter * set cursorline
augroup END

" }}}

" STATUS LINE {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%\ 

" Show the status on the second to last line.
set laststatus=2

" }}}
