set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).

packadd! dracula
syntax enable
colorscheme dracula

let g:zig_fmt_autosave = 0

"let g:solarized_termcolors=256
"colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

"set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
"set expandtab             " use spaces instead of tabs (why?!?!?)
set smarttab              " use tabs at the start of a line, spaces elsewhere
set wrap                " don't wrap text

