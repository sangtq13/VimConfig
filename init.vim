" Options
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set cc=80 " Show at 80 column a border for good code style
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim
set laststatus=2
"set expandtab
set tabstop=2
set shiftwidth=2

" Plugins will be downloaded under the specified directory
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" call plug#begin(stdpath('data') . '/site/autoload')
" Declare the list of plugins.
" Theme plugin
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 

" File search
  Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
  Plug 'junegunn/fzf.vim'

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " Language server protocol (LSP) 
  Plug 'pappasam/coc-jedi',                     " Jedi language server 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  Plug 'liuchengxu/vista.vim'                   " Function tag bar 
  Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tag 
    \ { 
      \ 'do': 'yarn install '
              \ .'--frozen-lockfile '
              \ .'&& yarn build',
      \ 'branch': 'main' 
    \ }

" Code syntax highlight
  Plug 'yuezk/vim-js'                           " Javascript
  Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  Plug 'uiiaoo/java-syntax.vim'                 " Java
  Plug 'vim-python/python-syntax'               
  " Debugging
  Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  Plug 'samoshkin/vim-mergetool'                " Git merge
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
colorscheme gruvbox
let g:vimspector_base_dir=expand(stdpath('data').'/plugged/vimspector/')
"let g:bargreybars_auto=0
"let g:airline_solorized_bg='dark'
"let g:airline_powerline_fonts=1
"let g:airline#extension#tabline#enable=1
"let g:airline#extension#tabline#left_sep=' '
"let g:airline#extension#tabline#left_alt_sep='|'
"let g:airline#extension#tabline#formatter='unique_tail'
"let NERDTreeQuitOnOpen=1

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Other setting
for setting_file in split(glob(stdpath('data').'/settings/*.vim'))
  execute 'source' setting_file
endfor

"let nvim_settings_dir = stdpath('data') . '/settings/'
"execute 'source' .nvim_settings_dir.'coc.vim'
"execute 'source' .nvim_settings_dir.'floaterm.vim'
"execute 'source' .nvim_settings_dir.'nerdtree.vim'
"execute 'source' .nvim_settings_dir.'fzf.vim'
"execute 'source' .nvim_settings_dir.'vimspector.vim'
