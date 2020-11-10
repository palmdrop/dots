" PLUGINS
call plug#begin('~/.local/share/nvim/site/plugged')

" Colorizer for color hexcodes (activate with ":ColorToggle")
Plug 'chrisbra/Colorizer' 

" Makes text more readable when writing prose (activate with ":goyo" or space and g"
Plug 'junegunn/goyo.vim'

" Vim themes
Plug 'jacoborus/tender.vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'branwright1/salvation-vim'
Plug 'fehawen/cs.vim'
Plug 'andreypopp/vim-colors-plain'
Plug 'ryuta69/elly.vim'

" Statusline
"Plug 'fehawen/sl.vim'

" Highlighting for i3 config file
" Plug 'PotatoesMaster/i3-vim-syntax'

" Markdown support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Nerdtree
Plug 'preservim/nerdtree'

call plug#end()

let g:vim_markdown_folding_disabled = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" BASIC
set directory^=$HOME/.cache/vim//
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set wildmode=longest,list,full

" SHORCUTS
map <C-g> :Goyo<CR> 
map <C-c> :ColorToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" SEARCH
set hlsearch
set ignorecase
set smartcase

" INTERFACE
set laststatus=2
set noruler
set noshowcmd

set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a

set splitbelow splitright

" COLOR
"set termguicolors

"colorscheme distinguished
"colorscheme jellybeans_dark
"colorscheme badwolf
"colorscheme default
"colorscheme tender
"colorscheme zenburn
"colorscheme gruvbox
"colorscheme alduin
"colorscheme mountain
"colorscheme elly
"colorscheme plain
"colorscheme twilight
"colorscheme salvation
"colorscheme mountaineer-grey
"colorscheme mountaineer
"colorscheme bliss
"colorscheme gunmetal
"colorscheme gunmetal-grey
colorscheme cs-edit
"TODO try cs to sync terminal and vim colors!

"let g:lightline = {
"      \ 'colorscheme': 'mountaineer_grey',
"      \ }
"let g:lightline = {
"      \ 'colorscheme': 'mountaineer',
"      \ }
"

"let g:airline_theme='alduin'

"highlight Normal guibg=none guifg=none

" RENDERING
set encoding=utf-8
set linebreak
syntax enable

" MISC
set backspace=indent,eol,start
set history=10000

" CUSTOM FUNCTIONS

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Search function for notes directory
command! -nargs=1 Ngrep vimgrep "<args>" $NOTES_DIR/**/*.txt

" Open NERDTree if opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
