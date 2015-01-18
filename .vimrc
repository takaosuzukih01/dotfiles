filetype plugin indent on

"フォーマット指定
set number
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
syntax on
set backspace=indent,eol,start
set incsearch


"D言語コンパイル
nnoremap <F5> <ESC>:call RUN()<ENTER>
function! RUN()
  :w|!dmd -run ./%;
endfunction

"キーバインド
inoremap <C-j> <ESC>

"NeoBundle Begin
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif 
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
"plugins begin

"plugins end
call neobundle#end()
"NeoBundle End

filetype plugin indent on
