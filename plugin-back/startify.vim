autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NvimTreeToggle 
            \ |   wincmd w
            \ | endif
