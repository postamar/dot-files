" Source vimrc after saving it
autocmd! BufWritePost .vimrc,vimrc source $MYVIMRC | NERDTreeToggle | NERDTreeToggle

" Auto save files on window blur
autocmd! FocusLost * :silent! up

" make use real tabs
au! FileType make    set noexpandtab

au! BufRead,BufNewFile gitconfig set ft=gitconfig

" NERDTree on startup and focus on the other buffer
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Tagbar on startupt
autocmd VimEnter * TagbarOpen

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeOrTagbarLeft()
  let dont_count = 0
  " Detect which plugins are open
  if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
      let dont_count = dont_count + 1
  endif

  if bufwinnr('__Tagbar__') != -1
      let dont_count = dont_count + 1
  endif

  " no real buffer left
  if winnr("$") - dont_count == 0
    " this will be run only on windows in the current tab
    windo q
  endif
endfunction

" Close vim if NERDTree is the only buffer left
autocmd WinEnter * call s:CloseIfOnlyNerdTreeOrTagbarLeft()

" Protobuf detection
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
