" Vim-plug initialization (taken from fisa-vim-config)
" My vimrc

call plug#begin('~/.vim/plugged')

" NerdTree
Plug 'scrooloose/nerdtree'

" vim-devicons, Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" Gitgutter
Plug 'airblade/vim-gitgutter'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" completor.vim (https://github.com/maralla/completor.vim)
Plug 'maralla/completor.vim'

" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" farmergreg/vim-lastplace
Plug 'farmergreg/vim-lastplace'

"
" Some Plugin may useful ???
"

" automatically enclose quotes and brackets
" Plug 'jiangmiao/auto-pairs'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
" Plug 'ervandew/supertab'

call plug#end()

" NERDTree Auto open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Airline
set laststatus=2  " let airline appear all the time
let g:airline_theme = 'term'
set t_Co=256 " enable 256 colors in vim (if not set, vim-airline-theme might not show correctly)
let g:airline_powerline_fonts = 1  " use poewrline-fonts
let g:airline#extensions#tabline#enabled = 1 " Smarter tab line (https://github.com/vim-airline/vim-airline#smarter-tab-line)
let g:airline#extensions#whitespace#enabled = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim-devicons
set encoding=UTF-8
