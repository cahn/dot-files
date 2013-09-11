" Ian's vim settings
set autoindent " always set autoindenting on
set smartindent
set shiftwidth=2
set softtabstop=2
set expandtab

set backspace=indent,eol,start

syntax enable
filetype on
filetype plugin on
filetype indent on

" Below are my own preferences from http://items.sjbach.com/319/configuring-vim-right
runtime macros/matchit.vim " % will now switch from ( to ), { to }, xml tags, if/elif/else/end, and more! 

set wildmenu
set wildmode=list:longest " Sets command completion to behave like bashes

set hidden " Sets hidden buffers

nnoremap ' `
nnoremap ` '

"set title

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.
" If the search term highlighting gets annoying, set a key to switch it off temporarily
nmap <silent> <leader>n :silent :nohlsearch<CR>

" buffer switching/management
map <Right> :bnext<CR>
imap <Right> <ESC>:bnext<CR>
map <Left> :bprev<CR>
imap <Left> <ESC>:bprev<CR>
" Del is kind of useless on OS X but I'll leave it
map <Del> :bd<CR>

" H and L normally go to the beginning and end of the screen
map H ^
map L $
" :o will open buffers
cab o find 

:nmap <Space> i_<Esc>r

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
