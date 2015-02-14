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
"検索が最後まで進んだら、先頭に戻る
set wrapscan
"カーソル位置を表示
set ruler
"折り返さない
set nowrap

"D言語コンパイル
nnoremap <F5> <ESC>:call RUN()<ENTER>
function! RUN()
  :w|!dmd -run ./%;
endfunction

"キーバインド
inoremap <C-j> <ESC>
nnoremap <C-e> :VimFiler -split -simple -winwidth=35 -no-quit<ENTER>
nnoremap <C-b> <C-w>l:Unite buffer<ENTER><ESC>

"NeoBundle Begin
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif 
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
"plugins begin

"Unite
NeoBundle 'Shougo/unite.vim'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200

"Others
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc'

"plugins end
call neobundle#end()
"NeoBundle End

filetype plugin indent on

