set mouse=a
set clipboard=unnamed
set ttimeoutlen=0

set number
set wildmenu
set showmode
set showcmd
set ruler

set scrolloff=8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=2

set t_Co=16
set background=dark
set cursorline
set colorcolumn=81
set incsearch
set hlsearch

set splitright
set splitbelow

colorscheme solarized
syntax enable

nnoremap j gj
nnoremap k gk
nnoremap <up> g<up>
nnoremap <down> g<down>

nnoremap <Leader><Esc> :noh<Enter>

nnoremap <Leader>F :Files<Enter>
nnoremap <Leader>B :Buffers<Enter>
nnoremap <Leader>A :Ag<Enter>
nnoremap <Leader>L :Lines<Enter>
nnoremap <Leader>M :Marks<Enter>
nnoremap <Leader>W :Windows<Enter>
nnoremap <Leader>H :History<Enter>
nnoremap <Leader>C :Commits<Enter>
nnoremap <Leader>! :VimuxPromptCommand<Enter>

nnoremap <Leader>i :s/\(\w*\%#\w*\)\\|:\(\w*\%#\w*\)\\|'\(\w*\%#\w*\)'\\|"\(\w*\%#\w*\)"/\1\2\3\4/e<Enter>:noh<Enter><C-O>
nnoremap <Leader>s :s/\(\w*\%#\w*\)\\|:\(\w*\%#\w*\)\\|'\(\w*\%#\w*\)'\\|"\(\w*\%#\w*\)"/:\1\2\3\4/e<Enter>:noh<Enter><C-O>
nnoremap <Leader>q :s/\(\w*\%#\w*\)\\|:\(\w*\%#\w*\)\\|'\([^']*\%#[^']*\)'\\|"\([^"]*\%#[^"]*\)"/'\1\2\3\4'/e<Enter>:noh<Enter><C-O>
nnoremap <Leader>Q :s/\(\w*\%#\w*\)\\|:\(\w*\%#\w*\)\\|'\([^']*\%#[^']*\)'\\|"\([^"]*\%#[^"]*\)"/"\1\2\3\4"/e<Enter>:noh<Enter><C-O>
nnoremap <Leader>k :s/\(\w*\%#\w*\)\s*=>\s*\\|:\(\w*\%#\w*\)\s*=>\s*\\|'\(\w*\%#\w*\)'\s*=>\s*\\|"\(\w*\%#\w*\)"\s*=>\s*/\1\2\3\4: /e<Enter>:noh<Enter><C-O>
nnoremap <Leader>K :s/\(\w*\%#\w*\):\s*/'\1' => /e<Enter>:noh<Enter><C-O>
nnoremap <Leader>Ki :s/\(\w*\%#\w*\):\s*/\1 => /e<Enter>:noh<Enter><C-O>
nnoremap <Leader>Ks :s/\(\w*\%#\w*\):\s*/:\1 => /e<Enter>:noh<Enter><C-O>
nnoremap <Leader>Kq :s/\(\w*\%#\w*\):\s*/'\1' => /e<Enter>:noh<Enter><C-O>
nnoremap <Leader>KQ :s/\(\w*\%#\w*\):\s*/"\1" => /e<Enter>:noh<Enter><C-O>

if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'powerline/fonts', { 'do': './install.sh' }
  Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-ruby/vim-ruby'
  call plug#end()
endif

autocmd VimEnter * call s:initialize_powerline()
autocmd VimEnter * call s:initialize_vim_better_whitespace()

function s:initialize_powerline()
  if exists('g:powerline_loaded')
    set laststatus=2
    set noshowmode
    set noruler
  endif
endfunction

function s:initialize_vim_better_whitespace()
  if exists('g:loaded_better_whitespace_plugin')
    autocmd BufWritePre * StripWhitespace
  endif
endfunction
