" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-haml'

" ==  ==
Plug 'djoshea/vim-autoread'

" == JS ==
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'maksimr/vim-jsbeautify'
Plug 'mxw/vim-jsx'

Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-scripts/mru.vim'
Plug 'godlygeek/tabular'
Plug 'mitermayer/vim-prettier'
Plug 'yggdroot/indentline'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/syntastic'
Plug 'yuttie/comfortable-motion.vim'
Plug 'andrewradev/splitjoin.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'jlanzarotta/bufexplorer'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'  }

" == Python ==
Plug 'tweekmonster/django-plus.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'pallets/jinja'


" == RoR ==
Plug 'vim-ruby/vim-ruby'
Plug 'itmammoth/run-rspec.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'phongnh/vim-rubocop'

" == Fuzzy ==
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'junegunn/fzf.vim'

" === git ===
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'junegunn/gv.vim'

" == Utils ==
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'adelarsq/vim-matchit'

Plug 'thieejnphajm/custom_lightline_config'
Plug 'iberianpig/ranger-explorer.vim'
Plug 'tkhren/vim-fake'
Plug 'tpope/vim-abolish'
Plug 'chrisbra/csv.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'morhetz/gruvbox'
Plug 'mattn/vim-sqlfmt'
" Initialize plugin system

Plug 'jebaum/vim-tmuxify'

call plug#end()

" == config ==

set background=light
colorscheme gruvbox

set noswapfile
set nobackup
set ttymouse=xterm2
set mouse=a
let mapleader=","
set number
set nowrap
set formatoptions-=t
set hlsearch
set incsearch

set updatetime=100              " vim-gitgutter delay
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds

set laststatus=2                " Alway show status
" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nofoldenable

" nnoremap 0 _

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\_\_,trail:·
set linebreak    "Wrap lines at convenient points

" Show print margin
set textwidth=120
set colorcolumn=+1

set autoread                    "Reload files changed outside vim
au CursorHold * checktime


autocmd BufRead,BufNewFile *.strace set filetype=strace
set splitright
set splitbelow

" Disable auto new line (wrap)
set tw=0


" ===== NERDTree =====
map <silent> <leader>n :NERDTreeToggle<CR>
map <silent> <leader>f :NERDTreeFind<CR>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" ===== Tmux in vim =====
" Don't allow any default key-mappings.
let g:tmux_navigator_no_mappings = 1

" Re-enable tmux_navigator.vim default bindings, minus <c-\>.
" <c-\> conflicts with NERDTree "current file".

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Edit my vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
" Take effect vimrc immediately
nnoremap <leader>sc :source $MYVIMRC<CR>

" FZF fuzzy search
set rtp+=/usr/local/opt/fzf

map <leader>t :FZF<CR>
map <leader><Space> :FZF<CR>

" Tab
noremap <TAB>h gT
noremap <S-TAB> gT
noremap <S-h> gT
noremap <TAB><Left> gT
noremap <TAB><TAB> gt
noremap <TAB>l gt
noremap <S-l> gt
noremap <TAB><Right> gt

noremap <leader><TAB> :Buffers<cr>

" disable arrows
noremap <left> <nop>
noremap <right> <nop>

" Gblame
noremap <leader>B :Gblame<CR>

".vimrc
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>


" Yank and paste from the Clipboard
" map Y "+yy
nnoremap <leader>y "+y
xnoremap <leader>y "+y
" map P "+P
noremap <leader>p "+p
" so ,y will copy to your system clipboard and ,p will paste from it.
" The ” is the system clipboard register

inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>

" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" set list
" set nolist

" tab
noremap <leader>T :tabn

" Shortcut to save
map <leader>w :w<CR>
map <leader>wq :wq<CR>
map <leader>qa :qa<CR>
map <leader>qq :q!<CR>

" Disable highlight after search
map <silent> <leader><CR> :noh<CR>

noremap <leader>gc :Ag! "<cword>"<cr>
noremap <leader>ac :Ack! ""<left>

" Visual reverse bg
:hi Visual term=reverse cterm=reverse guibg=LightGrey

" open new tab and search something
nmap <leader>A :tab split<cr>:Ag ""<left>

" Immediately search for the word under the cursor in a new tab
nmap <leader>a :tab split<cr>:Ag <C-r><C-w><cr>

let g:vimrubocop_keymap = 0
nmap <leader>r :RuboCop<cr>

nmap <leader>GV :GV<cr>

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

noremap <C-s> :shell<CR>

let g:AutoPairsMapCh = 0
set backupcopy=yes

noremap <leader>bdp Obinding.pry<esc>:w<cr>

set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

" Copy current buffer filename into clipboard
" relative path  (src/foo.txt)
nnoremap <silent> <leader>cf :let @*=expand("%")<cr>

" absolute path  (/something/src/foo.txt)
nnoremap <silent> <leader>cF :let @*=expand("%:p")<cr>

" filename       (foo.txt)
nnoremap <silent> <leader>ct :let @*=expand("%:t")<cr>

" directory name (/something/src)
nnoremap <silent> <leader>ch :let @*=expand("%:p:h")<cr>

" Remove trailing space
nnoremap <silent> <F5> :%s/\s\+$//e<cr>

map <silent> Q :close<cr>

map <leader>1 ^
map <leader>S :RunSpecLine<cr>
" Bubble single line
" [e ]e
" Bubble multiple lines
" [egv ]egv

set textwidth=120

let g:ranger_explorer_keymap_edit    = '<C-o>'
let g:ranger_explorer_keymap_tabedit = '<C-t>'
let g:ranger_explorer_keymap_split   = '<C-s>'
let g:ranger_explorer_keymap_vsplit  = '<C-v>'


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <leader>bd :bufdo bd<cr>

au BufReadPost *.inky set syntax=html

nnoremap <leader>+ :exe "vertical resize +10"<CR>
nnoremap <leader>- :exe "vertical resize -10"<CR>

" # jlanzarotta/bufexplorer
" To start exploring in the current window, use: >
"  <Leader>be   or   :BufExplorer   or   Your custom key mapping
" To toggle bufexplorer on or off in the current window, use: >
"  <Leader>bt   or   :ToggleBufExplorer   or   Your custom key mapping
" To start exploring in a newly split horizontal window, use: >
"  <Leader>bs   or   :BufExplorerHorizontalSplit   or   Your custom key mapping
" To start exploring in a newly split vertical window, use: >
"  <Leader>bv   or   :BufExplorerVerticalSplit   or   Your custom key mapping
