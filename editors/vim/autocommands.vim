" Source vimrc after saving it
autocmd! BufWritePost .vimrc,vimrc source $MYVIMRC | NERDTreeToggle | NERDTreeToggle

" Auto save files on window blur
autocmd! FocusLost * :silent! up

" make use real tabs
au! FileType make    set noexpandtab
" au! FileType python  set noexpandtab

au! BufRead,BufNewFile gitconfig set ft=gitconfig

" NERDTree on startup and focus on the other buffer
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Tagbar on startupt
autocmd VimEnter * TagbarOpen

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" Close vim if NERDTree is the only buffer left
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Protobuf detection
augroup filetype
  au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
