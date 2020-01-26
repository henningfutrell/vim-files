" Since Vim will source .vimrc from any directory you run Vim from, this is a potential
" security hole; so, you should consider setting secure option. This option will restrict
" usage of some commands in non-default .vimrc files.
" commands that write to file or execute shell commands are not allowed and map commands are displayed.
"
" So, you should add these two lines to your main .vimrc file.
"    - https://www.alexeyshmalko.com/2014/using-vim-as-c-cpp-ide/
set exrc
set secure

" Show long lines
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray


" Customize the formatting
set tabstop=4
set shiftwidth=4
set autoindent


" BEGIN INSTALLIN VIM-PLUG PLUGS
call plug#begin('~/.vim/plugs')

" lazily loaded syntax highlighting (cover all bases)
Plug 'sheerun/vim-polyglot'

" use tern for completion suggestions
Plug 'ternjs/tern_for_vim', {'do' : 'npm install'}

" You Complete Me completion system
Plug 'ycm-core/youcompleteme'

" lint ES with ESLINT
Plug 'dense-analysis/ale'

" nerd tree
Plug 'scrooloose/nerdtree'

" END INSTALLING PLUGS
call plug#end()

" Configure you complete me
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1


" Look for include paths
let &path.="src/include,/usr/include/AL,"

