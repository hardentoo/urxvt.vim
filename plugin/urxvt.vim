if !exists('g:urxvt_fifo')
    let g:urxvt_fifo='/tmp/urxvt.fifo'
endif

fu! urxvt#put(cmd)
    return system('ps -p `cat ' . g:urxvt_fifo . '.pid` > /dev/null && ' .
                \ 'echo "' . a:cmd . '" > ' . g:urxvt_fifo)
endfu!

fu! urxvt#change_dir()
    return urxvt#put('cd ' . expand('%:p:h'))
endfu!

command! UrxvtChangeDir call urxvt#change_dir()
