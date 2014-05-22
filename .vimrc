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
colorscheme molokai256

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
" Ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

" Linea de Estado
set ls=2
set statusline=%F%m%r%h%w\ [FORMATO=%{&ff}]\ [TIPO=%Y]\ [POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
