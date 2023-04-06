set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set number
"set cursorline
"set cursorcolumn
set virtualedit=onemore
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set nowrap


set list listchars=tab:\>\-
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set clipboard=unnamedplus

let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nmap <Leader>u <C-r>
nmap <Leader>n :nohlsearch<CR><ESC>

let g:session_path = expand($HOME . '/.vim/sessions')

if !&compatible
  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

if !isdirectory(g:session_path)
    call mkdir(g:session_path, 'p')
endif

if &compatible
  set nocompatible               " Be iMproved
endif


" Required:
filetype plugin indent on
syntax enable


" Set indent as 2 for JS and TS 
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.mjs,*.cjs setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab
augroup END


" VimAirline settings

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='iceberg'

" VimFiler Settings

let g:vimfiler_safe_mode_by_default=0
nnoremap <Leader>f :VimFiler<CR>


" Vim Lsp Settings

let g:asyncomplete_auto_popup=1
let g:asyncomplete_popup_delay=200

nnoremap <C-]> :<C-u>LspDefinition<CR>
nnoremap K :<C-u>LspHover<CR>
nnoremap <Leader>R :<C-u>LspRename<CR>
nnoremap <Leader>N :<C-u>LspReferences<CR>
nnoremap <Leader>F :<C-u>LspDocumentDiagnostics<CR>
nnoremap <Leader>s :<C-u>LspDocumentFormat<CR>
set omnifunc=lsp#complete

nnoremap <Leader>d :LspDefinition<CR>
nnoremap <Leader>D :LspReferences<CR>

syntax enable
set background=dark
colorscheme molokai
