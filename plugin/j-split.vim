" J-Split
" Split current line into multiple lines

" Define J command
:nnoremap <Leader>j :call JSplit()<cr>

" Split by contiguous spaces into multiple lines and re-indent new lines
function JSplit()
  let s:startline = line(".")

  :s/\([^^ ]\) \+/\1\r/g

  call ReindentTo(s:startline)
endfunction

function ReindentTo(line_number)
  :normal Vt
  :exec a:line_number
  :normal =
endfunction
