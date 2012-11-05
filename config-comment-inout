" from: http://vim.wikia.com/wiki/Easy_%28un%29commenting_out_of_source_code

" lhs comments
" ,c# shell, python, perl
" ,c/ c++
" ,c> email quote
" ,c" vim
" ,c% latex, prolog
" ,c! assembly/X-resources
" ,c; scheme
" ,c- sql, ada, lua
" ,cc clears any of the previous comments
map <leader>c# :s/^/#/<CR>
map <leader>c/ :s/^/\/\//<CR>
map <leader>c> :s/^/> /<CR>
map <leader>c" :s/^/\"/<CR>
map <leader>c% :s/^/%/<CR>
map <leader>c! :s/^/!/<CR>
map <leader>c; :s/^/;/<CR>
map <leader>c- :s/^/--/<CR>
map <leader>cc :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>

" wrapping comments
" ,c* c
" ,c( Standard ML
" ,c< html
" ,cd clears any of the wrapping comments
map <leader>c* :s/^\(.*\)$/\/\* \1 \*\//<CR>
map <leader>c( :s/^\(.*\)$/\(\* \1 \*\)/<CR>
map <leader>c< :s/^\(.*\)$/<!-- \1 -->/<CR>
map <leader>cd :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>

"" vim:ft=vim
