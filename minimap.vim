" https://gist.github.com/1470884
" https://gist.github.com/1471147
" https://gist.github.com/2424873
"" last/newest one is used here

function! ToggleMinimap()

    if exists("s:isMini") && s:isMini == 0
        let s:isMini = 1
    else
        let s:isMini = 0
    end

    if (s:isMini == 0)

        " save current visible lines
        let s:firstLine = line("w0")
        let s:lastLine = line("w$")

        " don't change window size
        let c = &columns * 12
        let l = &lines * 12
        exe "set columns=" . c
        exe "set lines=" . l

        " make font small
        set guifont=Ubuntu\ Mono\ 6

        exe 'normal zR'

        " highlight lines which were visible
        let s:lines = ""
        for i in range(s:firstLine, s:lastLine)
            let s:lines = s:lines . "\\%" . i . "l"
            if i < s:lastLine
                let s:lines = s:lines . "\\|"
            endif
        endfor

        exe 'match Visible /' . s:lines . '/'
        hi Visible guifg=#ffffff guibg=#2b3c43
        set cursorline
        set noantialias

        no j 10j
        no k 10k

        nmap <LeftRelease> :ToggleMinimap<CR>
        nmap <space> :ToggleMinimap<CR>

    else

        set guifont=Ubuntu\ Mono\ 12
        hi clear Visible
        set nocursorline
        set antialias

        unmap j
        unmap k
        unmap <LeftRelease>
        unmap <space>

        exe ":normal 0"

    endif

endfunction

command! ToggleMinimap call ToggleMinimap()

nmap <leader>' :ToggleMinimap<CR>
