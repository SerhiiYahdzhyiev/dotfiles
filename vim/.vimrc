set nocompatible
set nowrap

if has('filetype')
    filetype indent plugin on
endif

if has('syntax')
    syntax on
endif

set path+=**
set wildmenu
set wildmode=list:longest
" set showcmo
set complete=.,w,b,u,t
set tags=./tags

set incsearch
set ignorecase
set smartcase

set backspace=indent,eol,start
set autoindent
set nostartofline

set ruler
set laststatus=2

set confirm

set visualbell
set t_vb=

if has('mouse')
    set mouse=a
endif

set cmdheight=1
set scrolloff=8

set number
set relativenumber

set shiftwidth=2
set softtabstop=2
set expandtab

" set background=dark
set termguicolors
colorscheme sy

" hi Normal ctermbg=Black
" hi NonText ctermbg=Black

" Mappings
let mapleader = " "

" Buffers
nnoremap <leader>c <cmd>bwipeout<CR> " c for close
nnoremap <leader>l <cmd>bnext<CR>
nnoremap <leader>h <cmd>bprev<CR>
nnoremap <leader><tab> <cmd>b#<CR> " alternate buffer

" Config
nnoremap <leader>ev <cmd>:edit $MYVIMRC<CR>
nnoremap <leader>r <cmd>:source $MYVIMRC<CR>

inoremap jj <esc>
nnoremap Y y$
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap ]b gt
nnoremap [b gT
nnoremap <leader>z <c-z>
nnoremap <leader>s <cmd>vsplit<CR>
nnoremap <leader>e <cmd>e .<CR>
nnoremap <leader>b :ls<CR>
nnoremap <leader><leader> :ls!<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Custom function calls
nnoremap <leader>cb <cmd>call CleanUnlistedBuffers()<CR>
vnoremap gc :<C-u>call ToggleComment()<CR>

" Autocommands
autocmd FileType vim setlocal commentstring=\"%s
autocmd FileType vim setlocal commentstring=\"%s
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType html setlocal commentstring=<!--\ %s\ -->
autocmd FileType css setlocal commentstring=/*\ %s\ */
autocmd FileType javascript,typescript setlocal commentstring=//\ %s
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType c,cpp setlocal commentstring=//\ %s
autocmd FileType markdown setlocal commentstring=<!--\ %s\ -->
autocmd FileType tex setlocal commentstring=%\ %s

" Auto-pair
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

function! CleanUnlistedBuffers()
  for i in range(1, bufnr('$'))
    if bufexists(i) && !buflisted(i)
      execute 'bwipeout' i
    endif
  endfor
endfunction

function! ToggleComment()
  let l:cs = substitute(&commentstring, '%s.*', '', '')
  if l:cs == ''
    let l:cs = '"'
  endif

  let l:start = line("'<")
  let l:end = line("'>")

  let l:pattern = '^\s*' . escape(l:cs, '#') . '\s\?'

  let l:is_commented = 1
  for lnum in range(l:start, l:end)
    if getline(lnum) !~# l:pattern
      let l:is_commented = 0
      break
    endif
  endfor

  for lnum in range(l:start, l:end)
    let line = getline(lnum)
    if l:is_commented
      call setline(lnum, substitute(line, l:pattern, '', ''))
    else
      call setline(lnum, l:cs . ' ' . line)
    endif
  endfor
endfunction
