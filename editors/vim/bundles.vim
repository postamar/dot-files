filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
  Bundle 'gmarik/vundle'

" Languages/Syntaxes/Frameworks {{{
  " Other {{{
  Bundle 'tpope/vim-markdown'
  " }}}
" }}}

" Git {{{
  Bundle 'tpope/vim-fugitive'
  Bundle 'tpope/vim-git'
" }}}

" Text objects {{{
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'michaeljsmith/vim-indent-object'
  Bundle 'argtextobj.vim'
  " Snipmate deps
  Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'tomtom/tlib_vim'
  Bundle 'garbas/vim-snipmate'
  Bundle 'honza/snipmate-snippets'
" }}}

" Utility {{{

  Bundle "tpope/vim-surround"

  " Tagbar
  Bundle "majutsushi/tagbar"

  " Extended session
  Bundle "xolox/vim-session"

  " camelcasemotion
  Bundle "camelcasemotion"

  Bundle "ervandew/supertab"

  Bundle "kien/rainbow_parentheses.vim"
  autocmd VimEnter * RainbowParenthesesToggle
  autocmd Syntax * RainbowParenthesesLoadRound
  autocmd Syntax * RainbowParenthesesLoadSquare
  autocmd Syntax * RainbowParenthesesLoadBraces


  Bundle 'godlygeek/tabular'
  map <Leader>a= :Tabularize /=<CR>
  map <Leader>a> :Tabularize /=><CR>
  map <Leader>a: :Tabularize /\z:<CR>

  vmap <Leader>a= :Tabularize /=<CR>gv
  vmap <Leader>a> :Tabularize /=><CR>gv
  vmap <Leader>a: :Tabularize /\z:<CR>gv

  imap <Leader>a= <Esc>:Tabularize /=<CR>i
  imap <Leader>a> <Esc>:Tabularize /=><CR>i
  imap <Leader>a: <Esc>:Tabularize /\z:<CR>i

  if exists(":Tabularize")
    " Auto-align
    "" Cucumber
    inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a
    function! s:align()
      let p = '^\s*|\s.*\s|\s*$'
      if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
      endif
    endfunction

    "" Assignments etc
    " These need more work:
    " TODO: - keep cursor position
    "       - don't align equals sign if inside hashrocket
    " inoremap => =><Esc>:Tabularize /=> <CR>i
    " inoremap =  =<Esc>:Tabularize /=<CR>i
  endif

  Bundle 'scrooloose/nerdcommenter'
  let NERDSpaceDelims = 1 " space between comment and code
  map  <Leader>/ <plug>NERDCommenterToggle
  vmap  <Leader>/ <plug>NERDCommenterToggle gv
  imap <Leader>/ <Esc><plug>NERDCommenterToggle i
  let g:NERDAlignCommentToggle = 1

  Bundle 'vim-scripts/ZoomWin'
  map <Leader>z :ZoomWin<CR>
  imap <Leader>z <Esc>:ZoomWin<CR>


  Bundle 'scrooloose/nerdtree'
  let g:NERDTreeIgnore      = ['\.rbc$', '\~$', '.DS_Store$']
  let g:NERDTreeChDirMode   = 2
  let g:NERDTreeMouseMode   = 3
  let g:NERDTreeMinimalUI   = 1
  let g:NERDTreeDirArrows   = 1
  let g:NERDTreeHijackNetrw = 0
  let g:NERDTreeWinsize     = 30

  Bundle 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_auto_colors = 0
  let g:indent_guides_enable_on_vim_startup = 1
  autocmd VimEnter * IndentGuidesEnable

  Bundle 'scrooloose/syntastic'
  let g:syntastic_enable_signs  = 1
  let g:syntastic_auto_loc_list = 0
" }}}

autocmd BufWritePost bundles.vim source ~/.vim/bundles.vim
filetype plugin indent on

