set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


syntax on
filetype plugin indent on
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set tabstop=4
set expandtab
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

imap <S-Tab> <C-o><<

if &t_Co >= 256 || has("gui_running")
	    colorscheme mustang
	endif

	if &t_Co > 2 || has("gui_running")
	    syntax on
	endif
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F10>

:colorscheme Monokai

set mouse=a

nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>


autocmd StdinReadPre * let s:std_in=1

" Code folding plugin
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" You complete me
Plugin 'Valloric/YouCompleteMe'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='light'

Plugin 'airblade/vim-gitgutter'
let g:gitgutter_enabled = 1

Plugin 'sjl/badwolf'

" Fzf
set rtp+=/usr/local/opt/fzf

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
