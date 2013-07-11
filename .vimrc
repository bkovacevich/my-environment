" sane editing options
set tabstop=4                  " number of spaces that a <Tab> in the file counts for
set shiftwidth=4               " number of spaces to use for each step of (auto)indent
"set copyindent                " copy indenting style of the line above
set autoindent                 " automatically indent, similar to above
set pastetoggle=<F5>
set whichwrap=b,s,h,l,<,>,[,]  " allow the cursor to wrap on anything
set backspace=2                " fully enable backspace to delete anything in insert mode
set noshowmatch                " don't go back to the matching bracket (annoying)

autocmd FileType python set expandtab " for python, indent with spaces

" personal prefrences
set background=dark
colorscheme default

" different colorschemen for VCSVimDiff
au FilterWritePost * if &diff |  colorscheme ron | else | colorscheme default | endif
au BufWinLeave * colorscheme default

" enable syntax highlighting
syntax on                      " turn on syntax highlighting
au syntax mason so /usr/share/vim/vim73/syntax/mason.vim
au BufNewFile,BufRead *.m* set ft=mason
au BufNewFile,BufRead *.html set ft=mason
"filetype indent plugin on     " set indentation rules based on file type and enable filetype plugins (for matchit.vim)
"syntax sync minlines=200       " always sync syntax highlighting at least 200 lines back
set t_Co=256                   " use 256 colors
"set clipboard=unnamed
"set mouse=a                       " enable mouse
set hidden                     " allow switching of buffers without saving
set wildmode=longest:full      " don't match the first word on tabbed auto completion
set wildmenu
set wrap
"map <F1> :set mouse=r<CR>
"map <F2> :set mouse=a<CR>
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html  " syntax higlighting for ruby ERB files
set smartcase

set fileformat=unix

set exrc

autocmd BufNewFile,BufRead *.js,*.json  set filetype=javascript
autocmd FileType javascript,jade set expandtab tabstop=2 shiftwidth=2

" remap tab to autocomplete words when not at the beginning of a line
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
