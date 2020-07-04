" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Gruvbox theme
    Plug 'morhetz/gruvbox'
    " A collection of language packs for Vim.
    Plug 'sheerun/vim-polyglot'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Fugitive Git
    Plug 'tpope/vim-fugitive'
    " Flake8 linter 
    Plug 'nvie/vim-flake8'
    " Auto Complete COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " HTML, SCSS
    Plug 'mattn/emmet-vim'
    " Conjure
    Plug 'Olical/conjure', { 'tag': 'v4.0.0' }
    " Clojure Autocompletion
    Plug 'clojure-vim/async-clj-omni'
    " File Tree
    Plug 'preservim/nerdtree'
    " Vim Fireplace
    Plug 'tpope/vim-fireplace'
    " Conjure for conversational software development
    Plug 'Olical/conjure', {'tag': 'v4.0.1'}
    " Float Preview Clojure
    Plug 'ncm2/float-preview.nvim'
    " Asynchronous Lint Engine
    Plug 'w0rp/ale'

    call plug#end()
