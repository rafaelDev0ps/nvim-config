" Basics
set number
set hlsearch
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set noerrorbells
set novisualbell
syntax enable
set incsearch
set showmatch
set smarttab
set t_vb=
set tm=500
set background=dark
set mouse=a
set title

" THEME
packadd! dracula
syntax enable
colorscheme dracula

" Autocomplete for (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

" PLUGIN TERRAFORM
" installation: https://github.com/hashivim/vim-terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1


" PLUGIN NERD TREE CONFIGS
" installation: https://github.com/preservim/nerdtree
" Tab navigation like Firefox browser
map <F2> :NERDTree
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
inoremap <C-S-w>   <Esc>:tabclose<CR>
