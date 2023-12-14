set incsearch
set smarttab
set tabstop=6
set hlsearch
set shiftwidth=6
" set scrollbind
set smartindent
set smartcase
inoremap {<CR> {<CR>}<C-o>O
set ic
colorscheme pablo 
set cindent
set autoindent
set smartindent
set visualbell
set numberwidth=5
set relativenumber
set foldenable
set foldmethod=indent
syntax on
set tags=tag
set spell
abbr quick the quick brown fox
set statusline=2
hi Normal guibg=NONE ctermbg=NONE
abbr arun Arun jyothish k
abbr whatislorem Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
" Plugin 'Valloric/YouCompleteMe'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'matze/vim-move'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'

Plugin 'preservim/nerdtree'
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <C-t> :NERDTreeToggle<CR>

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'jiangmiao/auto-pairs'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" Plugin  'vim-scripts/Conque-GDB'
Plugin 'vim-scripts/gdbmgr'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

command Gpp !clear;g++ --std=c++17 -o a %;./a
let g:move_key_modifier_visualmode = 'S'
let g:move_key_modifier = 'C'
let g:move_normal_option = 'C'
let g:snipMate = { 'snippet_version' : 1 }
"----------------------------------------------------"
function! __doxygen()
	Plugin 'vim-scripts/vim-doxygen-toolkit'
	" Set a custom mapping for the Doxygen Toolkit
	let g:DoxygenToolkit_mapping = '<Leader>d'
	" Customize the Doxygen comment format
	let g:DoxygenToolkit_comment_format = "/**"
endfunction
"----------------------------------------------------"

" Configure YCM pop-up documentation without split window
let g:ycm_autoclose_preview_window_after_completion = 0

" Use K key to show documentation without creating a split window
nnoremap <silent> K :YcmCompleter GoTo<CR>

nmap <leader>d <plug>(YCMHover)

" Set a custom mapping to close the YCM pop-up window
nnoremap <silent> <Leader>w :YcmCompleter ClosePreviewWindow<CR>

" Set YCM auto-popup inline documentation timeout to 5 seconds
let g:ycm_auto_trigger_show_doc = 1


"replace visual ....
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
source /home/arun/.vim/cscope.maps/cscope_maps.vim
"!find . -name '*.c' -o -name '*.h' -o -name '*.cpp' -o -name '*.hh' -o -name '*.lds' -o -name '*.S' -o -name Makefile -o -name '*.cdl' -o -name '*.in' -o -name 'Kconfig'> cscope.files
"
Plugin 'majutsushi/tagbar'
