set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'rizzatti/dash.vim'
Plugin 'prettier/vim-prettier', { 
	\ 'do': 'yarn install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kshenoy/vim-signature'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/goyo.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'alvan/vim-closetag'
Plugin 'AndrewRadev/undoquit.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'godlygeek/tabular'
Plugin 'ryanoasis/vim-devicons'
Plugin 'easymotion/vim-easymotion'

" Lint
Plugin 'w0rp/ale'

" AutoComplete
"Plugin 'shougo/deoplete.nvim'
Plugin 'othree/html5.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ervandew/supertab'

" Languages
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'mattn/emmet-vim'
Plugin 'elzr/vim-json'
Plugin 'digitaltoad/vim-pug'
Plugin 'moll/vim-node'

" Themes
Plugin 'dracula/vim'
Plugin 'KabbAmine/yowish.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'reedes/vim-thematic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ajmwagar/vim-deus'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme pencil
" highlight Comment cterm=italic
let g:pencil_terminal_italics = 0
let g:pencil_neutral_code_bg = 1 " 0=gray (def), 1=normal
let g:pencil_higher_contrast_ui = 0   " 0=low (def), 1=high
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)
let g:pencil_neutral_headings = 1   " 0=blue (def), 1=normal
let g:pencil_neutral_code_bg = 1   " 0=gray (def), 1=normal
let g:pencil_gutter_color = 1      " 0=mono (def), 1=color

" Javascript related
let g:jsx_ext_required = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Prettier related
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#jsx_bracket_same_line = 'true'
let g:prettier#config#print_width = 80

" git status update time
set updatetime=200
set signcolumn=yes
let g:gitgutter_highlight_lines = 0
let g:gitgutter_override_sign_column_highlight = 0


" vim javascript
" let g:javascript_plugin_jsdoc = 1
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
set conceallevel=2

" css vim
let g:cssColorVimDoNotMessMyUpdatetime = 1

" match tag
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
		\ 'js': 1,
		\ 'jsx': 1
    \}

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" nerdtree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDChristmasTree = 1
let g:NERDTreeHighlightCursorline=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeStatusline=-1
let g:NERDTreeWinSize=30

" vim emmet
let g:user_emmet_leader_key='<C-Z>'

" ctrlp
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_match_window = 'order:ttb'

" vim-devicons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 0
let g:airline_powerline_fonts = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 0
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" airline 
let g:airline_theme='base16_google'

" ale config
let g:ale_fixers = {
\   'javascript': ['standard'],
\}
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_completion_enabled = 1
let g:ale_sign_error = '☞'
let g:ale_sign_warning = '--'
hi ALEErrorSign ctermbg=NONE

" Normal settins
set gfn=Knack_Nerd_Font:h14,Hannotate_SC:h14,Menlo:h14
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set showmode
set number
set hlsearch
set ignorecase
set ts=2
set showcmd 
set mouse=a
set is 
set fileformat=unix
set cursorline
set number                     " Show current line number
set relativenumber             " Show relative line numbers
" set cursorcolumn
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
" 代码补全
set completeopt=preview,menu
" 共享剪贴板  
set clipboard+=unnamed 
" 自动缩进
set autoindent
"get rid of | characters of VertSplit
" set fillchars+=vert:│
hi Normal ctermbg=NONE guibg=NONE

"隐藏顶部标签栏"
set showtabline=0
" Set to auto read when a file is changed from the outside
set autoread
" Set 7 lines to the cursor - when moving vertically using j/k
set so=10
" Turn on the WiLd menu
set wildmenu
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
"Always show current position
set ruler

" 添加空行
" nmap <S-Enter> O<Esc>
" nmap <CR> o<Esc>
map ; :

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*/node_modules/*
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=1

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


" gitgutter color config, this place to cover preconfig
hi GitGutterAdd ctermbg=none
hi GitGutterChange ctermbg=none
hi GitGutterDelete ctermbg=none
hi GitGutterChangeDelete ctermbg=none

