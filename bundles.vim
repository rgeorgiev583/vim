" PLUGINS BUNDLE
let vundle_readme=expand($HOME.'/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Plugin.."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle/
endif

" Required:
if has('vim_starting')
  set nocompatible
  filetype off
  set runtimepath+=$HOME/.vim/bundle/vundle/
  set sessionoptions-=options
endif

call vundle#begin(expand($HOME.'/.vim/bundle/'))
Plugin 'gmarik/vundle'

" Plugin Groups
" List only the plugin groups you will use
if !exists('g:bundle_groups')
  let g:bundle_groups=['general', 'devel', 'languages', 'colorscheme']
endif

" Plugins here:
" GENERAL
if count(g:bundle_groups, 'general')
  if executable('ack')
    Bundle 'mileszs/ack.vim'
  endif
  "Plugin 'itchyny/calendar.vim'
  "Plugin 'easymotion/vim-easymotion'
  "Plugin 'Stormherz/tablify'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'tacahiroy/ctrlp-funky'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'mbbill/undotree'
  Plugin 'mhinz/vim-startify'
  Plugin 'tpope/vim-abolish'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'jreybert/vimagit'
  Plugin 'troydm/easybuffer.vim'
  Plugin 'yonchu/accelerated-smooth-scroll'
  Plugin 'pelodelfuego/vim-swoop'
  Plugin 'chrisbra/vim-diff-enhanced'
  " PCRE support
  Plugin 'othree/eregex.vim'
  " tmux integration with airline
  Plugin 'edkolev/tmuxline.vim'
endif
" DEVELOPER
if count(g:bundle_groups, 'devel')
  "if WINDOWS()
    " NeoComplete
    Plugin 'Shougo/neocomplete'
    "Plugin 'Shougo/neosnippet'
    "Plugin 'Shougo/neosnippet-snippets'
  "else
    " YouCompleteMe
    "Plugin 'Valloric/YouCompleteMe'
    "Plugin 'SirVer/ultisnips'
  "endif
  Plugin 'osyo-manga/vim-over'
  "Plugin 'honza/vim-snippets'
  "Plugin 'mattn/emmet-vim'
  Plugin 'Chiel92/vim-autoformat'
  "Plugin 'jiangmiao/auto-pairs'
  Plugin 'scrooloose/nerdtree'
  Plugin 'Yggdroot/indentLine'
  Plugin 'godlygeek/tabular'
  Plugin 'luochen1990/rainbow'
  Plugin 'mhinz/vim-signify'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/syntastic'
  " VCS (git) commands
  Plugin 'tpope/vim-fugitive'
  " gitk for vim
  Plugin 'gregsexton/gitv'
endif
" LANGUAGES
if count(g:bundle_groups, 'languages')
  "Plugin 'ap/vim-css-color'
  Plugin 'sheerun/vim-polyglot'
  "Plugin 'othree/html5.vim'
  "Plugin 'othree/javascript-libraries-syntax.vim'
  "Plugin 'othree/yajs.vim'
  "Plugin 'slava/vim-spacebars'
  "Plugin 'burnettk/vim-angular'
  "Plugin 'kchmck/vim-coffee-script'
  "Plugin 'leafgarland/typescript-vim'
  "Plugin 'tpope/vim-rails'
  "Plugin 'vim-ruby/vim-ruby'
  Plugin 'fatih/vim-go'
  Plugin 'rust-lang/rust.vim'
  Plugin 'racer-rust/vim-racer'
endif
" COLORSCHEME
if count(g:bundle_groups, 'colorscheme')
  Plugin 'morhetz/gruvbox'
  Plugin 'sjl/badwolf'
endif

call vundle#end()
" automatically load filetype plugins
filetype plugin indent on
