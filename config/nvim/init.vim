" GLOBAL SETTINGS
" LOCATION -> .config/nvim/init.vim
"
"
" <SPACE> as leader
let mapleader=" "

" Use system clipboard
set clipboard+=unnamedplus

" Scroll up down with scroll key
" set mouse=a

syntax on

" Ignores lowercase
set ignorecase
set smartcase

set encoding=utf-8
" set number relativenumber " off too distracting

" Tab Settings
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Autocompletion
set wildmode=longest,list,full

" Fix splitting
set splitbelow splitright

" Cursor line
set cursorline
set cursorcolumn

" set termguicolors TOO BRIGHT
" colorscheme codedark TOO DARK

" Installed Plugins
call plug#begin('~/.local/share/nvim/site/autoload/plug')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/goyo.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'preservim/nerdtree'

call plug#end()

" AUTOMATED SETTINGS AND FORMAT
"
" Vertically center document when entering insert mode
autocmd InsertEnter * norm zz

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"Tab formatting :tabedit :tabnext :tabclose
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" NVIM INTERNAL KEYMAPPINGS
"
" Toggle paste code from web - F2
set pastetoggle=<F2>

" Toggle search highlight - F3
nnoremap <F3> :set hlsearch!<CR>

" Tab shortcuts for Prev tab or Next tab .. not sure what 'A' is referring to.
nnoremap <A-p> :tabp<CR>
nnoremap <A-n> :tabN<CR>

" Enable and Disable auto comment - <SPACE>c,<SPACE>C
map <leader>c :setlocal formatoptions-=cro<CR>
map <leader>C :setlocal formatoptions=cro<CR>

" Enable Disable Auto Indent - <SPACE>i,<SPACE>I
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" Alias write and quit to Q
nnoremap <leader>q :wq<CR>
nnoremap <leader>w :w<CR>

" MOVE SELECTED VISUAL
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" |__SPELLCHECK
"
" Enable spell check - <SPACE>s
map <leader>s :setlocal spell! spelllang=en_us<CR>

" Run spell check - <SPACE>S
map <leader>S :!clear && shellcheck %<CR>

" Replace all command shortcut - <SPACE>r
map <leader>r :%s//gI<Left><Left><Left>

" PLUG-IN KEYMAPPING
"
" NerdTree key mappings
nnoremap <leader>n :NERDTreeToggle<CR>

" Goyo key mappings
map <leader>g :Goyo<CR>
