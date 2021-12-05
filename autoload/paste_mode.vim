fun paste_mode#PasteInsert()
    " automatically enter and leave paste mode
    let old_paste_val = &paste
    fun! PasteOnLeaveInsert() closure
        let &paste = old_paste_val
    endfun
    autocmd InsertLeave * ++once call PasteOnLeaveInsert()
    set paste
    startinsert! | call feedkeys("\<CR>")
endfun

