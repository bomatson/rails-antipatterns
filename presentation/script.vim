set nonumber
set hidden
noremap <PageUp> :bp<CR>
noremap <Left> :bp<CR>
noremap <PageDown> :bn<CR>
noremap <Right> :bn<CR>
noremap Q :q<CR>


b 1



b 2


call matchadd("Comment", "- Unimportant bullet\\(\\_.*slide 2\\)\\@=")

call matchadd("Comment", "- Really unimportant bullet\\(\\_.*slide 2\\)\\@=")


b 3



b 4

9,12SyntaxInclude ruby



b 5



b 1
