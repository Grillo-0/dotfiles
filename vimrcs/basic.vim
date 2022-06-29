""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "ç"

" Y age como D e C, copia ate o final da linha, ao inves de agir como yy
map Y y$

"leader + espaço remove o highlight da pesquisa
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut de esconder/mostrar o fold com espaco
nnoremap <space> za

" crtl+n abre a nerdtree
map <C-n> :NERDTreeToggle<CR>

"Setas nao funcionam mais(apenas h, j , k, l)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"ç para voltar pro modo normal
imap jj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indentação
""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
set autoindent "indentacao automatica
set cindent "indentacao para linguagem C
set smartindent "identacao geral
set backspace=indent,eol,start
set shiftwidth=4 "tamanho do tab na indentacao
set tabstop=4 "tab 4 espacos
set softtabstop=4

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Geral
""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable "ative highlight de sintaxe
set number "numero da linha
set cursorline "highlight na linha atual
set colorcolumn=80 
set wildmenu "menu de selecao de sugestoes no modo comando
set showmatch "mostra match de paratensis, chaves, colchetes...
set lazyredraw "melhoria de desempenho
set laststatus=2 "seta a barra de status
set history=1000 "historico de comandos
set showcmd "mostra comandos sendo digitados na barra inferior
set hidden "melhor uso de buffers na mesma janela
set backup "gera arquivo de backup
set ttyfast "melhoria de desempenho, ver :h ttyfast
set encoding=utf-8 "codificacao utf-8
set autoread

" Retorna a posicao que estava quando o arquivo foi fechado
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""

vnoremap ( <esc>`>a)<esc>`<i(<esc>
vnoremap [ <esc>`>a]<esc>`<i[<esc>
vnoremap { <esc>`>a}<esc>`<i{<esc>
vnoremap ' <esc>`>a"<esc>`<i"<esc>
vnoremap " <esc>`>a'<esc>`<i'<esc>

" Map auto complete of (, ", ', [
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i

set list
set lcs=tab:--,trail:¬


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pesquisa
""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch "highlight na pesquisa equanto eh realizada
set hlsearch "highlight apos a pesquisa ser feita

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folds
""""""""""""""""""""""""""""""""""""""""""""""""""""

set foldenable "habilita poder usar o fold
set foldmethod=syntax

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Backups & Undo
""""""""""""""""""""""""""""""""""""""""""""""""""""

let &directory = expand('~/.vimdata/swap//')
set backup
let &backupdir = expand('~/.vimdata/backup//')
set undofile
set undolevels=1000 "tamanho do historico de undos
let &undodir = expand('~/.vimdata/undo//')
if !isdirectory(&undodir) | call mkdir(&undodir, "p") | endif
if !isdirectory(&backupdir) | call mkdir(&backupdir, "p") | endif
if !isdirectory(&directory) | call mkdir(&directory, "p") | endif
