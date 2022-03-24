
"https://github.com/NeuralNine/config-files
:set number
":set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set nowrap
:set encoding=UTF-8

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "devicons extends
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'maxmellon/vim-jsx-pretty'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/YorickPeterse/happy_hacking.vim.git'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'hushicai/tagbar-javascript.vim'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/enricobacis/vim-airline-clock.git'
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'leafgarland/typescript-vim'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Chiel92/vim-autoformat'
Plug 'sainnhe/sonokai'
Plug 'luochen1990/rainbow'

call plug#end()

let mapleader = " "

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-\> :ToggleTerm direction=float<CR>


"nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <leader>ff <cmd> Telescope find_files<CR>
nnoremap <leader>fg <cmd> Telescope live_grep<CR>
nnoremap <leader>fb <cmd> Telescope buffers<CR>
nnoremap <leader>fh <cmd> Telescope help_tags<CR>

nnoremap <leader>tt <cmd> ToggleTerm size=40 direction=float<CR>
nnoremap <leader>tv <cmd> ToggleTerm size=80 direction=vertical<CR>
nnoremap <leader>th <cmd> ToggleTerm size=20 direction=horizontal<CR>

nnoremap <leader>aa <cmd> Autoformat<CR>

nnoremap <C-u> :bp<CR>
nnoremap <C-i> :bn<CR>
nnoremap <C-w> :bw<CR>

let g:user_emmet_leader_key='<C-y>'
nmap <F8> :TagbarToggle<CR>

":set completeopt-=preview " For No Previews

":colorscheme jellybeans
":colorscheme onedark

:colorscheme sonokai
let g:sonokai_style = 'shusia'

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:user_emmet_mode='a'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "\uE0C4 "
let g:airline#extensions#tabline#left_alt_sep = "\uE0C4 "
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#clock#auto = 1
let g:airline#extensions#clock#format = '%H:%M'
let g:airline#extensions#clock#updatetime = 60000

"let g:polyglot_disabled = ['jsx']

"let g:vim_jsx_pretty_disable_js = 0
"let g:vim_jsx_pretty_colorful_config = 1


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

"vim-es6
"gfn -> function* name (args) {yield arg;}
"=>  -> (arg) => {...}
"class -> class name { constructor () { ... } }
"forof -> for (let value of arr ) { ... }
"im    -> import lib from 'Library'
"ex    -> export default foo

"Autoformat : align line


