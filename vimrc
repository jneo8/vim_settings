" jneo8 vimrc (https://github.com/jneo8/vim_settings)

" better backup, swap and undos storage (taken from fisa-vim-config)
" Create folder if not exist.
silent !mkdir -p ~/.vim/dirs/tmp > /dev/null 2>&1
silent !mkdir -p ~/.vim/dirs/backups > /dev/null 2>&1
silent !mkdir -p ~/.vim/dirs/undos > /dev/null 2>&1

set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo


" Vim-plug initialization (taken from fisa-vim-config)
call plug#begin('~/.vim/plugged')

" Asynchronous Linter Engine
Plug 'w0rp/ale'

" NerdTree
Plug 'scrooloose/nerdtree'

" vim-devicons, Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" Gitgutter
Plug 'airblade/vim-gitgutter'

" acts like ctrlp, but even better
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" completor.vim (https://github.com/maralla/completor.vim)
Plug 'maralla/completor.vim'

" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" farmergreg/vim-lastplace
Plug 'farmergreg/vim-lastplace'

" emmmet-vim
" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'

" html tag auto-close
Plug 'alvan/vim-closetag'

" EditorConfig plugin for Vim http://editorconfig.org
Plug 'editorconfig/editorconfig-vim'

" Vim motion on speed!
Plug 'easymotion/vim-easymotion'

" Markdown syntax highlighting (https://github.com/plasticboy/vim-markdown)
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" makrdown preview (https://github.com/iamcco/markdown-preview.nvim)
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

"
" Plug for specific language
"

" python highlighting
Plug 'hdima/python-syntax'

" vim-go, Go development plugin for Vim
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" vim-scala, integration of Scala into Vim.
Plug 'derekwyatt/vim-scala'

"
" Some Plugin may useful ???
"

" automatically enclose quotes and brackets
" Plug 'jiangmiao/auto-pairs'

" Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs
" Plug 'ervandew/supertab'


" vim-python-pep8-indent
" Plug 'Vimjas/vim-python-pep8-indent'

"
" Theme, choose from https://github.com/rafi/awesome-vim-colorschemes
"
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'danilo-augusto/vim-afterglow', { 'as': 'afterglow' }

call plug#end()


"
" Basic Parameter Setting
"

syntax on
set nocompatible
set number
set mouse+=a
set backspace=indent,eol,start

" Indentation & tab
set autoindent nosmartindent  " auto/smart indent
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4

" Search
set hlsearch
set incsearch

" background & theme
set background=dark

" Setting afterglow theme
let g:afterglow_blackout=1
let g:afterglow_inherit_background=1
colorscheme afterglow


" highlight color
set cursorline " highlight the whole current line
highlight CursorLine cterm=NONE ctermbg=168 ctermfg=white guibg=darkblue ctermfg=white
highlight ColorColumn ctermbg=235 guibg=#2c2d27
" highlight Normal guibg=NONE ctermbg=NONE
" highlight LineNr ctermfg=DarkGrey
" highlight Search cterm=bold ctermbg=220 ctermfg=27
" highlight IncSearch cterm=bold ctermbg=220 ctermfg=27
" highlight Visual cterm=bold ctermbg=220 ctermfg=27
"

"
" End Basic Parameter setting
"

"
" Plug Parameter setting
"

" vim-devicons & encoding
set encoding=utf-8  " The encoding displayed
set fileencoding=utf-8  " The encoding written to file

" ALE
let g:ale_sign_column_always = 1
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0
let g:ale_list_window_size = 5
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" NERDTree Auto open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:command NE NERDTree
:command NEF NERDTreeFocus

" Airline
set laststatus=2  " let airline appear all the time
let g:airline_theme = 'term'
set t_Co=256 " enable 256 colors in vim (if not set, vim-airline-theme might not show correctly)
let g:airline_powerline_fonts = 1  " use poewrline-fonts
let g:airline#extensions#tabline#enabled = 1 " Smarter tab line (https://github.com/vim-airline/vim-airline#smarter-tab-line)
let g:airline#extensions#whitespace#enabled = 1


" python highlighting
let python_highlight_all = 1

" vim-markdown
let g:vim_markdown_folding_disabled = 1


"
" End Plug Parameter setting
"
