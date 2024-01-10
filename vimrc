" list all snippets for current filetype
" default config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:airline_theme="molokai"
let g:ctrlp_working_path_mode = ''
let g:ctrlp_map='<c-p>'
let g:bracey_browser_command='surf' 
let g:move_key_modifier_visualmode = 'S'
"for YCM to use clangd instead
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("/opt/clangd_17.0.3/bin")
syntax on
set number
set number relativenumber 
set tabstop=4
set autoindent 
set shiftwidth=4
set mouse=a
set background=dark
colorscheme PaperColor 
set showcmd
set autochdir

"Plugin for Vim 
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'OmniSharp/omnisharp-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'prabirshrestha/vim-lsp'
Plug 'https://github.com/LuaLS/lua-language-server.git'
Plug 'LunarWatcher/auto-pairs'
"Plug 'maxboisvert/vim-simple-complete'
Plug 'matze/vim-move'
Plug 'sheerun/vim-polyglot'
call plug#end()
"configuration for Vim-plug Dont touch this 
filetype plugin on

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-@> coc#refresh()

"Some mapping for commands and shortcut
nnoremap <C-t> : hi Normal guibg=NONE ctermbg=NONE<CR>
hi Normal ctermbg=NONE
nmap <F2> :StartBrowserSync <CR>
nmap <F3> :KillBrowserSync <CR>
command S Bracey
command K BraceyStop
command Cp CtrlP
"set some custom command 
set complete -=t
set complete -=i

