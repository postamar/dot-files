syntax on

" Visual
  set number
  set ruler
  set guioptions=ce
  set showmatch                 " Briefly jump to a paren once it's balanced
  set linespace=2
  set cursorline
  set background=dark
  colorscheme lucius

" Tabs/Whitespace
  set tabstop=4
  set shiftwidth=4
  set softtabstop=4
  set autoindent
  set smarttab
  set expandtab
  set wrap
  set list
  set listchars=tab:▸\ ,nbsp:¬,trail:·
  set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Misc
  set switchbuf=useopen         " Don't re-open already opened buffers
  set nostartofline             " Avoid moving cursor to BOL when jumping around
  set virtualedit=all           " Let cursor move past the last char
  set whichwrap=b,s,h,l,<,>,[,]
  let mapleader = ','
  set autoread                  " watch for file changes
  set mouse=a
  set fileformats=unix

" Bells
  set novisualbell  " No blinking
  set noerrorbells  " No noise.
  set vb t_vb= " disable any beeps or flashes on error

" Searching
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

" Tab completion
  set wildmode=list:longest,list:full
  set wildignore+=*.o,*.obj,.git,*.pyc,*.swp

" Status bar
  set laststatus=2
  set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Folding
  set foldenable " Turn on folding
  set foldmethod=indent " Fold on indent
  set foldlevel=20
  set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

" Directories for swp files
  " persistent undos
  if version >= 730
    set undofile
    set undodir=~/.vim/dirs/undos
  endif

  set backupdir=~/.vim/dirs/backups
  set directory=~/.vim/dirs/swaps

" Nicer text navigation
  nmap j gj
  nmap k gk

" easier insert quitinfdg
  imap ;; <ESC>

" Reselect visual block after adjusting indentation
  vnoremap < <gv
  vnoremap > >gv

" Nicer splitting
  set splitbelow
  set splitright
  map <C-_> :split<CR>
  map <C-\> :vsplit<CR>

" Move around in insert mode
  inoremap <C-h> <left>
  inoremap <C-k> <up>
  inoremap <C-j> <down>
  inoremap <C-l> <right>

" Tab navigation
  map th :tabfirst<CR>
  map tj :tabnext<CR>
  map tk :tabprev<CR>
  map tl :tablast<CR>
  map tt :tabnew<CR>

" Opens an edit command with the path of the currently edited file filled in Normal mode: <Leader>e
  map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Strip trailing whitespace on save
  function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
  endfunction
  autocmd! BufWritePre * :call <SID>StripTrailingWhitespaces()
