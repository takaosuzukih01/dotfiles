filetype plugin indent on

"エンコーディング
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932,euc-jp
scriptencoding utf-8

"行番号を表示
set number
"タブの代わりにスペースを使う
set expandtab
"タブの幅
set tabstop=2
"インデントの幅
set shiftwidth=2
"自動でインデント
set autoindent
"{}などでいい感じにインデント入れてくれる
set smartindent
"デフォルトの色設定
syntax on
"バックスペースで前の行まで戻れるように
set backspace=indent,eol,start
"インクリメンタルサーチ
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
