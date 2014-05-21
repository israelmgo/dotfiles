syntax on
set title
set nocompatible
set encoding=utf-8
set noerrorbells
set novisualbell
set cursorline
set number
set incsearch
set showmatch
set hlsearch
set smartcase
set ignorecase
set ttyfast
set lazyredraw
set autoread
set hidden

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set history=1000
set undolevels=500
set noswapfile

set background=light
set t_Co=256
"colorscheme molokai256

filetype on
filetype plugin on
filetype indent on

" Autocompletado
set ofu=syntaxcomplete#Complete
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" Linea de Estado
set ls=2
set statusline=%F%m%r%h%w\ [FORMATO=%{&ff}]\ [TIPO=%Y]\ [POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
