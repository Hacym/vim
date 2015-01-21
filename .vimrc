execute pathogen#infect()
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
