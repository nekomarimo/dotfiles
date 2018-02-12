"----------------------------------------------------
" neobundle.vim
"----------------------------------------------------
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/neobundle.vim.git'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vimproc.git'
NeoBundle 'vim-jp/vimdoc-ja'
" colorscheme
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'
NeoBundle 'dracula/vim'

NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin on
filetype indent on

"基本設定
set nobackup

"エンコーディング関連
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp,euc-jp,cp932
set fileformats=unix,dos,mac

"StatusLine設定
set laststatus=2

"インデント設定
set autoindent
set tabstop=2
set shiftwidth=2
set smartindent

"補完関連
autocmd FileType * setlocal formatoptions-=ro

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索文字列入力時に順次対象文字列にヒットさせない
set noincsearch
" Esc連打で検索時にハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>

"移動関連

"Color関連
set t_Co=256 
syntax enable
set background=dark
colorscheme dracula

"編集関連
set backspace=2

"その他
" insertモードを抜けるとIMEオフ
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
set helplang=ja
