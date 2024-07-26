set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/plugins_config.vim
try
	source ~/.vim_runtime/my_configs.vim
catch
endtry

"Visibility
set number
set relativenumber
set wrap

"Indentation
"set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

autocmd Filetype html set tabstop=2 shiftwidth=2
autocmd Filetype css set tabstop=2 shiftwidth=2

set mouse=a
set showcmd


"KEYMAPS
nnoremap <space> <nop>
let mapleader = "-"

"saving and or quitting
nnoremap <C-p> :wq<CR>
nnoremap <C-q> :w <CR>
nnoremap <C-m> :q!<CR>

"Copy and pasting
nnoremap <C-c> :set mouse=<CR> :set number!<CR> :set relativenumber!<CR>
nnoremap <C-v> :set mouse=a<CR> :set number!<CR> :set relativenumber!<CR>

"Moving text
nnoremap <M-Up> ddkP
nnoremap <M-Down> ddp

"Commenting
"work in proggress
"autocmd Filetype c nnoremap <buffer> <C-;> I//<esc>

"NerdTree
nnoremap <C-e> :NERDTreeToggle<CR>

"Open terminal
nnoremap <C-t> :terminal<CR> 

"Auto indent text
nnoremap <C-o> :normal gg=G<CR>

"Other
inoremap jk <esc>
inoremap <leader><Del> <esc>ldwi
inoremap <leader><BS> <esc>ldbi
nnoremap vs :vs<space>

"boilerplates
autocmd Filetype c iabbrev <buffer> boiler int main(){<CR><CR>getchar();<CR>return 0;<CR>}<Up><Up><Up><tab>
autocmd Filetype cpp iabbrev <buffer> boiler int main(){<CR><CR>getchar();<CR>return 0;<CR>}<Up><Up><Up><tab>
