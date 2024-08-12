set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/plugins_config.vim
try
	source ~/.vim_runtime/my_configs.vim
catch
endtry

"NOTES
"Equal comparing
" ==# is case sensitive
" ==? is case insensitive
" NEVER USE ==

"Visibility
syntax on
let &number = 1
let &relativenumber = 1
let &wrap = 1

"Indentation
"set expandtab
let &tabstop=4
let &shiftwidth=4
let &autoindent = 1
let &smartindent = 1

autocmd Filetype html set tabstop=2 shiftwidth=2
autocmd Filetype css set tabstop=2 shiftwidth=2
autocmd Filetype v set tabstop=2 shiftwidth=2
autocmd Filetype verilog set tabstop=2 shiftwidth=2

set mouse=a
set showcmd


"KEYMAPS
nnoremap <space> <nop>
"let mapleader = "-"

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
nnoremap <C-y> :terminal<CR> 
nnoremap <C-t> :vs t<CR>:terminal<CR><C-w><C-w>:q!<CR>

"Auto indent text
nnoremap <C-o> :normal gg=G<CR>

"Other
inoremap jk <esc>
nnoremap vs :vs<space>

"boilerplates
autocmd Filetype c iabbrev <buffer> boiler int main(){<CR><CR>getchar();<CR>return 0;<CR>}<Up><Up><Up><tab>
autocmd Filetype cpp iabbrev <buffer> boiler int main(){<CR><CR>getchar();<CR>return 0;<CR>}<Up><Up><Up><tab>


"Status Line
set laststatus=2
set statusline=\ %f\ -\ %y\ %m
set statusline+=%=
set statusline+=%6l/%-4L\ \ %P\ \ 


"Functions
function Example()
	if 0
		echo "something"
	elseif 1
		echo "smtn else"
	else
		echo "nothing"
endfunction

function Renato(word)
	echom "ahhhh meniiiino" a:word
endfunction

function Many(...)
	echom a:0
	echom a:1
	echom a:000
endfunction
