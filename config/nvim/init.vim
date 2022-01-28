if &compatible
    set nocompatible
endif
" ref : https://github.com/erkrnt/awesome-streamerrc/blob/master/ThePrimeagen/.vimrc
syntax on

" Jumbo my muscle memory keymapping
map <F2> :w!<CR> " save the current file
map <F6> :split<CR> " split the current file (horizontal split)
map <S-F6> :vsplit<CR> " split the current file (horizontal split)
map <S-F8> : bdelete!<CR> " Shift F8 will delete buffer without saving

" default gruvbox font is too small for me.
" set guifont=Menlo-Regular:h16
set pyxversion=3

" Jumbo ends

set hidden
" set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch " highlights the previously searched string
:hi Search ctermfg=red ctermbg=gray
set vb t_vb= " stop beeping or flashing the screen
set ch=2 " Make command line 2 lines high
set showmatch " show matching brackets

" Web References {
" http://vim.spf13.com/
" https://www.youtube.com/watch?v=loNdGAnKEf8
" https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw/videos

" TODO : Yet to master
" https://github.com/easymotion/vim-easymotion
" }


" Easy pasting to windows apps - http://vim.wikia.com/wiki/VimTip21
" yank always copies to unnamed register, so it is available in windows clipboard for other applications.
set clipboard=unnamed

" Status Line {
        set laststatus=2                             " always show statusbar
"        set statusline=
"        set statusline+=%-10.3n\                     " buffer number
"        set statusline+=%f\                          " filename
"        set statusline+=%h%m%r%w                     " status flags
"        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
"        set statusline+=%=                           " right align remainder
"        set statusline+=0x%-8B                       " character value
"        set statusline+=%-14(%l,%c%V%)               " line, character
"        set statusline+=%<%P                         " file position
"}

"
" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=25


" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=200
highlight ColorColumn ctermbg=0 guibg=lightgrey

" hello front end masters
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'


Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'lyuts/vim-rtags'
Plug 'stephpy/vim-yaml'
Plug 'itchyny/lightline.vim'
" Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
" Plug 'preservim/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

" Yes, I am a sneaky snek now
" Plug 'justinmk/vim-sneak
Plug 'ambv/black'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
" Plug 'github/copilot.vim'
Plug 'nvim-lua/lsp_extensions.nvim'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
" Plug 'tjdevries/nlua.nvim'
" Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'mfussenegger/nvim-dap'
Plug 'Pocco81/DAPInstall.nvim'
Plug 'szw/vim-maximizer'

" https://www.youtube.com/watch?v=BdoizYjJHis
Plug 'liuchengxu/vim-which-key'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'rust-lang/rust.vim'
Plug 'darrikonn/vim-gofmt'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
Plug 'tomlion/vim-solidity'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'vim-conf-live/vimconflive2021-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

" HARPOON!!
Plug 'mhinz/vim-rfc'

" prettier
Plug 'sbdchd/neoformat'

" should I try another status bar???
"  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'hoob3rt/lualine.nvim'

" https://www.youtube.com/watch?v=EsGSwNySNMU
Plug 'unblevable/quick-scope'

Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plugin-config/coc.vim

" Statusbar config using airline {
let g:airline#extensions#tabline#enabled = 1
" ref : https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
 let g:airline_theme='violet'
" }

" gruvbox configuration overrides {
" ref : https://github.com/morhetz/gruvbox/wiki/Configuration
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_his_color='orange'

source $HOME/.config/nvim/plugin-config/quickscope.vim

" colorscheme gruvbox
colorscheme industry
" }
set background=dark
set relativenumber

" Extra manual steps to install. ref - https://ctrlpvim.github.io/ctrlp.vim/#installation
let &runtimepath.=',' . expand("$HOME") . '/.vim/bundle/ctrlp.vim'

" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]

" lua require("theprimeagen")
" lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}

let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers=['.ctrlp']
" tune CtrlP to ignore java build, node_modules directories
set wildignore+=*/build/*,*/bin/*,*/node_modules/*

let loaded_matchparen = 1
let mapleader = " "


" YouCompleteMe Java settings . ref : https://github.com/ycm-core/YouCompleteMe#java-semantic-completion
let g:syntastic_java_checkers = []
autocmd FileType java setlocal omnifunc=javacomplete#Complete


let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

" Custom Key mappings {
" ref : https://stackoverflow.com/a/11676244"

" window split/navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w!<CR> " save the current file
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>H :split<CR> " split the current file (horizontal split)
nnoremap <leader>V :vsplit<CR> " split the current file (horizontal split)

" fzf and ripgrep shortcuts. ref : https://blog.avahe.tk/posts/neovim/fzf-ripgrep/
nnoremap <leader>t :Rg<SPACE>
nnoremap <leader>G :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <F3> :set norelativenumber<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" Coc settings {
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
" use <c-space>for trigger completion
inoremap <silent><expr> <NUL> coc#refresh()
" use <tab> for trigger completion and navigate to the next complete item

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
" To make <cr> select the first completion item and confirm the completion when no item has been selected:
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" }

" Fugitive git commands {
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nnoremap <leader>gc  :Gcommit<CR>
nnoremap <leader>gaa :Git add <CR>
nnoremap <leader>gau :Git add -u <CR>
nnoremap <leader>gaf :Gwrite<CR>
nnoremap <leader>gC :Git add <CR> :Gcommit<CR>

nnoremap <leader>gd :Git diff %<CR> "diff only current file
nnoremap <leader>gD :Git diff<CR>
nnoremap <leader>gpso :Git push origin main<CR>
nnoremap <leader>gplo :Git pull origin main<CR>
nmap <leader>gs :G<CR>
" }

" Bookmark commands for Plug MattesGroeger/vim-bookmarks
nmap <Leader>mt :BookmarkToggle<CR>
nmap <Leader>ma <Plug>BookmarkAnnotate
nmap <Leader>ml <Plug>BookmarkShowAll
nmap <Leader>mn <Plug>BookmarkNext<CR>
nmap <Leader>mN <Plug>BookmarkPrev<CR>
nmap <Leader>mcc <Plug>BookmarkClear<CR>
nmap <Leader>mx <Plug>BookmarkClearAll<CR>
nmap <Leader>mk <Plug>BookmarkMoveUp<CR>
nmap <Leader>mj <Plug>BookmarkMoveDown<CR>
nmap <Leader>mg <Plug>BookmarkMoveToLine<CR>

" CocSearch to rename a word in entire workspace : https://www.youtube.com/watch?v=q7gr6s8skt0&t=33s
" shortcut for "project-rename-word"
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
"}

" Custom Highlighting {
highlight VertSplit guibg=darkcyan
augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END
" }

" Custom Settings {
set suffixesadd+=.ts,.tsx,.js,.jsx,.css,.rb
set path=.,src,node_modules

" Empty value to disable preview window altogether
let g:fzf_preview_window = ''
" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

"}

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

nnoremap <silent> Q <nop>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
" Probably rename this, because its straight silly to be a worktree.
nnoremap <leader>; :lua require("theprimeagen.git-worktree").execute(vim.loop.cwd(), "just-build")<CR>

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <Leader>cpu a%" PRIu64 "<esc>
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>gt <Plug>PlenaryTestFile
nnoremap <leader>vwm :lua require("vim-with-me").init()<CR>
nnoremap <leader>dwm :lua require("vim-with-me").disconnect()<CR>
nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>
nnoremap <leader>nf :!./scripts/format.py %

nnoremap <leader>x :silent !chmod +x %<CR>

nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

inoremap <C-c> <esc>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

" ES
com! W w

nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre lua,cpp,c,h,hpp,cxx,cc Neoformat
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

fun! GoYCM()
    nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
    nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
endfun

autocmd FileType typescript :call GoYCM()
autocmd FileType java :call GoYCM()

" ref : https://github.com/itchyny/lightline.vim
"function! LightlineFilename()
"  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
"        \ &filetype ==# 'unite' ? unite#get_status_string() :
"        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
"        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
"endfunction
"
"let g:unite_force_overwrite_statusline = 0
"let g:vimfiler_force_overwrite_statusline = 0
"let g:vimshell_force_overwrite_statusline = 0


" Vundle {
" Vundle settings. Using vundle as secondary option if same feature not
" available through default vim Plugin
" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here

    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end()
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    syntax on                      " enable syntax

" Setting up Vundle - the vim plugin bundler end
" }

" Neovide settings (MacOS GUI for NeoVim)
let g:neovide_cursor_animation_length=0.01
let g:neovide_remember_window_size = v:true
