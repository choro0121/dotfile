" scriptの文字コード
scriptencoding utf-8

" バックアップファイル
set nobackup
set noswapfile

" 修正時に自動リロード
set autoread

" バッファ変更時に警告なし
set hidden

" 入力コマンドの表示
set showcmd

" クリップボードの使用
set clipboard=unnamed,autoselect

" ハイライト表示
set showmatch

" 行の折り返しを無効
set nowrap

" 行をまたいで移動 
set whichwrap=b,s,h,l,<,>,[,],~

" 矩形選択
set virtualedit=onemore

" シンタックスハイライトの有効
syntax enable

" バックスペースの有効
set backspace=indent,eol,start

" 行番号の表示
set number

" ターミナルのタイトル
set title

" ステータスバーを常に表示
set laststatus=2

" カラースキーマ
colorscheme desert

" 全角文字の幅を2文字に固定する
set ambiwidth=double

" タブを半角スペースで挿入する
set expandtab

" 0で始まる数値を8進数として扱わない
set nrformats-=octal

" タブサイズ
set tabstop=4
set shiftwidth=4

" インデント
set autoindent
set smartindent
set cindent

" インクリメンタルサーチ
set incsearch

" スマートケース
set ignorecase
set smartcase

" 検索が末尾まで進んだら先頭に移動
set wrapscan

" 検索結果をハイライト
set hlsearch


" キーバインド
" EscEscでハイライトを切り替える
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" jjでノーマルモードに戻る
inoremap <silent>jj <Esc>
