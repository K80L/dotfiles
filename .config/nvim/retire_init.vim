<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" this will install vim-plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

" if exists('g:vscode')
"     " VSCode extension
" else
"     " ordinary neovim
" endif

========
>>>>>>>> master:.config/nvim/retire_init.vim
" DEFAULT SETTINGS
set hidden 
syntax on
set nocompatible
set termguicolors
set number
set relativenumber
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
filetype on " detect files based on type
filetype plugin on " when a file is edited, its plugin file is loaded (if there is one)
filetype indent on " maintain indentation

" Enable autocompletion
set omnifunc=syntaxcomplete#Complete
setlocal omnifunc=go#complete#Complete

" Select keyword as you type
set completeopt=longest,menuone

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set scrolloff=8
set encoding=UTF-8
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175


"  Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

" Prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusNodeColorization = 1
========

let g:NERDTreeGitStatusWithFlags = 1
>>>>>>>> master:.config/nvim/retire_init.vim

" let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python'

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" TrueColor support
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


========
>>>>>>>> master:.config/nvim/retire_init.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')

" this is for auto complete, prettier and tslinting
" list of CoC extensions needed
Plug 'neoclide/coc.nvim', {'branch': 'release'}
<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
let g:coc_global_extensions = [
    \ 'coc-eslint',
    \ 'coc-tsserver',
    \ 'coc-css',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-prettier',
    \ 'coc-word',
    \ 'coc-graphql',]
========
>>>>>>>> master:.config/nvim/retire_init.vim

" Prettier Maybe we don't want this...
" Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" Typescript stuff
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'

" Vim diffing for code reviews
Plug 'AndrewRadev/diffurcate.vim'

" Language Packs for vim
Plug 'sheerun/vim-polyglot'

"this will auto close ( [ {
Plug 'jiangmiao/auto-pairs'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Devicons
Plug 'kyazdani42/nvim-web-devicons'

" NerdTree
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
========
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
 
" NerdTree
Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

>>>>>>>> master:.config/nvim/retire_init.vim
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
" Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Optional for telescope
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-tree/nvim-web-devicons'

" autoclosing tags
Plug 'alvan/vim-closetag'

" emmet
" Plug 'mattn/emmet-vim'

" comment/uncomment multiple lines easily
Plug 'tpope/vim-commentary'

" surround stuff with () {} [] '' etc..
Plug 'tpope/vim-surround'

" Language cheatsheet
" Plug 'dbeniamine/cheat.sh-vim'

" colorschemes
Plug 'gruvbox-community/gruvbox'

" for live grep
Plug 'BurntSushi/ripgrep'

" Fugitive
Plug 'tpope/vim-fugitive'

" Colors
Plug 'norcalli/nvim-colorizer.lua'

" Statusline
Plug 'nvim-lualine/lualine.nvim'

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" Asynchronous Linting Engine
Plug 'dense-analysis/ale'

" JsDoc
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

" Terraform Vim Plugin
Plug 'hashivim/vim-terraform'


" Swap windows <leader>ww
Plug 'wesQ3/vim-windowswap'

" ChatGPT
Plug 'jackMort/ChatGPT.nvim'

" See diffs in vim while coding
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

" GraphQL
Plug 'jparise/vim-graphql'

" Test runner (Jest, Playwrite, etc...)
Plug 'vim-test/vim-test'

"" Initialize plugin system
call plug#end()
" #######################################################################################################################################
========
" ChatGPT
Plug 'MunifTanjim/nui.nvim'
Plug 'jackMort/ChatGPT.nvim'
" Initialize plugin system
call plug#end()
" #######################################################################################################################################3

" coc extensions to install
let g:coc_global_extensions = [
    \ 'coc-eslint',
    \ 'coc-tsserver',
    \ 'coc-css',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-prettier',
    \ 'coc-snippets',]
>>>>>>>> master:.config/nvim/retire_init.vim

" vim-signify async update
set updatetime=100

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx,ts,tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,ts,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

set splitbelow splitright
" set background=dark
set t_Co=256

colorscheme gruvbox

" Transparancy
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

"REMAPS
" n - normal mode
" nore - no recursive execution
" map - just map lol 
" lhs - <leader>ff is what I am going to type
" rhs - :Telescope find_files<cr> is what is going to be executed once typed

" unhighlight current search word
nnoremap <leader>n :noh<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
nnoremap <leader>n :noh<CR>


function! s:check_back_space() abort
========
function! CheckBackspace() abort
>>>>>>>> master:.config/nvim/retire_init.vim
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ <SID>CheckBackspace() ? "\<Tab>" :
    \ coc#refresh()

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <C-@> on vim
inoremap <silent><expr> <c-@> coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" 9-9-22
" coc.nvim switched to a custom popup menu from 0.0.82
" you have to change key-mapping of <cr> to make it work.
" checkout current key-mapping by ":verbose imap <cr>"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" remap for complete to use tab and <cr>
inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ <SID>check_back_space() ? "\<Tab>" :
    \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <C-Space> coc#refresh()

" hi CocSearch ctermfg=12 guifg=#18A3FF
" hi CocMenuSel ctermbg=109 guibg=#13354A



========
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
>>>>>>>> master:.config/nvim/retire_init.vim

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" use <tab> for trigger completion and navigate to the next complete item
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction


========
>>>>>>>> master:.config/nvim/retire_init.vim
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""
" remove w key from split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <A-Left> :vertical resize -3<CR>
nnoremap <silent> <A-Right> :vertical resize +3<CR>
nnoremap <silent> <A-Up> :resize +3<CR>
nnoremap <silent> <A-Down> :resize -3<CR>

" change 2 split windows from horiz to vert and vice versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K 

"""""""""""""""""""""""""""""""""""""""
" => Telescope
"""""""""""""""""""""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fw :Telescope grep_string<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>

"""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:go_def_mapping_enabled = 0

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" open file in web browser
nnoremap <leader>op !xdg-open %<CR>

" source init.vim file
" nnoremap <leader><CR> :source $MYVIMRC<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" vertical split and open file explore
nnoremap <leader>pv :Vex<CR> 

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" quickfix list jumping. not used as this interferes with split navigation
========
" quickfix list jumping not used b/c interferes with splits
>>>>>>>> master:.config/nvim/retire_init.vim
" nnoremap <C-j> :cnext<CR>
" nnoremap <C-k> :cprev<CR>

" I don't know what these are
" vnoremap <leader>p "_dP
" vnoremap <leader>y +y
"

nnoremap <leader>y "+y
nnoremap <leader>p "+p

" Documentation on hover
" Ignore errors
function Null(error, response) abort
endfunction

<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" skeletons :read ~/.config/nvim/skeletons/react-typescript.tsx
" autocmd BufNewFile *.tsx 0r ~/.config/nvim/skeletons/react-typescript.tsx

========
>>>>>>>> master:.config/nvim/retire_init.vim
" vim-syntastic 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" end vim-syntastic


" augroup hover
" 	autocmd!
" 	autocmd CursorHold * if !coc#float#has_float()
" 		\| call CocActionAsync('doHover', 'float', function('Null'))
" 		\| call CocActionAsync('highlight', function('Null'))
" 	\| endif
" 	autocmd CursorHoldI * if CocAction('ensureDocument')
" 		\|silent call CocAction('showSignatureHelp')
" 	\| endif
" augroup end

" vim-go debugging 
" let g:go_debug=['lsp']

" vim-go autofmt 
 let g:go_fmt_command = "goimports"
" let g:go_fmt_autosave = 0

" lua stuffs
lua << EOF
require('config')
<<<<<<<< HEAD:.config/nvim/deprecated_init.vim
require('colorizer').setup()
require('lualine').setup()
require('telescope').setup({
  defaults = {
    theme = 'gruvbox'
  }
})
========
require('colorizer').setup{}
require('lualine').setup{
  options = { theme = 'gruvbox' }
}
require('telescope').setup{}
require('chatgpt').setup{
  api_key_cmd = 'op read op://dev/ChatGPT API Key/credential --no-newline'
}
>>>>>>>> master:.config/nvim/retire_init.vim
EOF
