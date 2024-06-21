set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/plugins_config.vim
try
  source ~/.vim_runtime/my_configs.vim
catch
endtry

"Visibility
set number
set relativenumber

"Indentation
"set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

set mouse=a
set showcmd

"keymap
nmap <C-p> :wq<CR>
nmap <C-q> :w<CR>
nmap <C-c> :set mouse=<CR>
nmap <C-v> :set mouse=a<CR>
nmap <C-t> :terminal<CR>

"NerdTree
nmap <C-e> :NERDTreeToggle<CR>
