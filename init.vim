" wget https://github.com/vim/vim/archive/v8.0.0666.tar.gz
" tar xvzf v8.0.0666.tar.gz
" ./configure --with-features=huge --enable-pythoninterp=yes  --enable-cscope --enable-fontset --enable-perlinterp --enable-rubyinterp --with-python-config-dir=/usr/lib/python2.7/config --prefix=/usr/local
" make
" sudo make install
" alias vi='/usr/local/bin/vim '

"vi /usr/local/Cellar/vim/7.4.1016/share/vim/vim74/ftplugin/python.vim,
"http://vim.1045645.n5.nabble.com/FileType-conditional-td1141787.html
"let g:loaded_youcompleteme = 0

" https://superuser.com/questions/302186/vim-scrolls-very-slowly-when-a-line-is-too-long
" Syntax coloring lines that are too long just slows down the world
set autoread
set synmaxcol=1000
set ttyfast " u got a fast terminal
"set ttyscroll=3
set lazyredraw " to avoid scrolling problems

" for paste mode toggle
set pastetoggle=<F2>
map <F4> :%retab! <CR> :w <CR>
" http://vim.wikia.com/wiki/Fix_indentation, 自动格式化代码
"map <F5> mzgg=G`z`

"for mac os crontab
autocmd filetype crontab setlocal nobackup nowritebackup
map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"
autocmd BufWritePre * :%s/\s\+$//ge

"set list listchars=eol:¬,tab:▸\ ,trail:.,
" keep 3 lines when scrolling"
set scrolloff=3
set shiftround

set undofile
set undodir=~/.Vim_undodir
set undolevels=1000

set guifont=Monaco:h16
set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set backupdir=~/.Vimbackup
set cursorline
"setlocal textwidth=80
set tags=tags
set noautochdir    " 注意这个自动切换目录会使rope找目录不正确，禁用，坑死我
autocmd BufRead,BufNewFile *.py set et ts=4 sw=4 sts=4
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set nu
if has('gui_running')
    set background=dark
else
    set background=dark
endif

" 配置多语言环境
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
endif

"source $VIMRUNTIME/vimrc_example.vim
set langmenu=en_US
let $LANG= 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set splitright
"turn off vim compatible check
set nocompatible
"check file type
set completeopt=longest,menu
"histroy line count
set history=1000
set showmatch
"left-down status line
set ruler
"auto match targets
set incsearch
"high light search
set hlsearch
"auto backup file with filename+~
"set backup
set title
set foldenable
"fold code by syntax 'cmd':
"'zi' open/close all folds
"'za' open/close current fold
"'zM' close all folds
"'zR' open all folds
set foldmethod=indent
"set foldmethod=marker
"set foldmethod=indent
set foldcolumn=0
set foldopen=all
"set foldclose=all
"colorscheme evening
"set cinoptions+={2,0,p0,t0
set formatoptions=tcqr
set nu

nnoremap gc :!gcc -Wall -g -o %:r %<cr>
"nnoremap gp :!g++ -Wall -g -o %:r %<cr>
nnoremap py :!python %<cr>
nnoremap pt :!py.test %<cr>
nnoremap no :!node %<cr>
"nnoremap gd :!sudo gdb %:r<cr>
"nnoremap ma :!make<cr>


call plug#begin('~/.vim/plugged')
Plug 'preservim/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'gregsexton/MatchTag'
Plug 'tpope/tpope-vim-abolish'
Plug 'Chiel92/vim-autoformat' " https://github.com/Chiel92/vim-autoformat for code formatter
Plug 'terryma/vim-expand-region'
Plug 'stephpy/vim-yaml'
Plug 'chase/vim-ansible-yaml'
"Plug 'ianva/vim-youdao-translater'  " https://github.com/ianva/vim-youdao-translater
Plug 'ntpeters/vim-better-whitespace'
Plug 'fullybaked/toggle-numbers.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
" Plug 'altercation/vim-colors-solarized.git'
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'lfv89/vim-interestingwords'    " https://github.com/lfv89/vim-interestingwords
Plug 'tpope/vim-sensible'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'sekel/vim-vue-syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'pegasuswang/vim-ubuntu-pastebin'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'jszakmeister/vim-togglecursor'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'vim-scripts/LargeFile'
Plug 'mhinz/vim-startify'
Plug 'rykka/riv.vim'    " rst
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'

" for javascript and react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {'do': 'npm install -g prettier'}
" Plug 'Quramy/tsuquyomi' TypeScript
Plug 'groenewege/vim-less'
Plug 'glench/vim-jinja2-syntax'
Plug 'moll/vim-node'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'    " https://github.com/junegunn/gv.vim git commit browser
" plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-eunuch'
Plug 'cakebaker/scss-syntax.vim'
"plug 'gorodinskiy/vim-coloresque'
" plug 'valloric/youcompleteme'
"
if has('nvim')
  Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'marijnh/tern_for_vim'

" let vundle manage vundle
Plug 'solarnz/thrift.vim'
" Plug 'Rykka/instantrst'
Plug 'vim-scripts/bufonly.vim'
Plug 'godlygeek/tabular'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'sukima/xmledit'
Plug 'mattn/emmet-vim'
Plug 'heavenshell/vim-pydocstring'
" plug 'sjl/gundo.vim'
Plug 'valloric/listtoggle'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'
"plug 'lokaltog/vim-powerline'
Plug 'python-mode/python-mode'
Plug 'zchee/deoplete-jedi'

Plug 'tpope/vim-dispatch'
Plug 'fatih/vim-go'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'    " 快速移动插件, ',,w'可以在单词上出现前缀，然后快速跳转
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
" plug 'ryanoasis/vim-devicons'

Plug 'xolox/vim-misc'
Plug 'terryma/vim-multiple-cursors'
" plug 'xolox/vim-easytags'
" let g:easytags_python_enabled = 0
" let g:easytags_python_script = 0
" autocmd filetype python let b:easytags_auto_highlight = 0

" 模糊搜索，使用z/支持模糊搜索
map z/ <plug>(incsearch-fuzzy-/)
map z? <plug>(incsearch-fuzzy-?)
map zg/ <plug>(incsearch-fuzzy-stay)


"plug 'valloric/youcompleteme'
" plug 't9md/vim-quickhl'
Plug 'scrooloose/nerdcommenter'
let g:nerdspacedelims = 1

call plug#end()

" brew install vim --with-python3
nmap <silent> <c-d> <plug>(pydocstring)
nnoremap py :!python %<cr>
" 用ctrl+l可以在insert和command模式都可以保存
inoremap <c-l> <c-o>:w!<cr>
nnoremap <c-l> :w!<cr>
" 切换 buffer
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> [n :bnext<cr>

let g:python3_host_prog = "/users/i312177/opt/anaconda3/bin/python3"
"let g:python_host_prog = "/system/library/frameworks/python.framework/versions/2.7/python"
let g:pymode_python = 'python'  " values are `python`, `python3`, `disable`.
let g:pymode_paths = reverse(split(globpath(getcwd().'/eggs', '*'), '\n'))    " support zc.buildout
let g:pymode_trim_whitespaces = 1
let g:pymode_quickfix_maxheight = 3
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = "<c-k>"
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()  # breakpoint todo remove; from nose.tools import set_trace; set_trace()'


let g:pymode_run = 1
let g:pymode_run_bind = "<c-e>"
"let g:pymode_run_bind = '<leader>r'
let g:pymode_virtualenv = 1

" override view python doc key shortcut to ctrl-shift-d
let g:pymode_doc=1
let g:pymode_doc_bind = 'k'

autocmd completedone * pclose
" python-mode conflict with jedi
let g:pymode_rope = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_goto_definition_bind = "<c-j>"
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_regenerate_on_write = 0
command Pr pymoderoperegenerate

let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
" http://stackoverflow.com/questions/16021297/how-to-map-alias-a-command-in-vim, pymodelint映射成pl
command Pl pymodelint
command F pymodelintauto    " auto pep8 fix
let g:pymode_lint_ignore = "c0111, w0105, c0325"
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = '😡'
let g:pymode_lint_error_symbol = '❌'
let g:pymode_lint_comment_symbol = '😢'

" 修改默认的红线为浅色，solorized黑色主题
highlight colorcolumn ctermbg=233
let g:pymode_lint_cwindow = 0
let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 1
" 指定ultisnips python的docstring风格, sphinx, google, numpy
let g:ultisnips_python_style = 'sphinx'


" for emmemt only avilable for html,css,sass
let g:user_emmet_install_global = 0
autocmd filetype html,htmldjango,css,scss.css,sass,jsx,javascript,javascript.jsx  EmmetInstall
let g:user_emmet_expandabbr_key = '<c-j>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends': 'jsx',
\      'quote_char': "'",
\  },
\}


autocmd bufnewfile *.py,*.cc,*.sh,*.java exec ":call Settitle()"
"新建.py,.cc,.java,.sh,
"定义函数Settitle，自动插入文件头
func Settitle()
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# -*- coding:utf-8 -*-")
        normal g
        normal o
        normal o
        call setline(5, "if __name__ == '__main__':")
        call setline(6, "    pass")
    endif
endfunc


function Headersh()
    call setline(1, "#!/usr/bin/env bash")
    normal g
    normal o
    normal o
endfunc
autocmd bufnewfile *.sh call Headersh()


" shortcuts to vimdiff, http://stackoverflow.com/questions/7309707/why-does-git-mergetool-opens-4-windows-in-vimdiff-id-expect-3
let mapleader=','
let g:mapleader=','

if &diff
    map <leader>1 :diffget local<cr>
    map <leader>2 :diffget base<cr>
    map <leader>3 :diffget remote<cr>
endif


" for nerdtree
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>
let g:NERDTreeWinSize=32
let nerdtreeshowhidden=1
let nerdtreeignore = [
            \ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.svn$', '\.swp$',
            \ '\.ds_store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.ropeproject$',
            \ ]

" for tagbarbar, sudo apt-get install ctags
"nmap <f8> :tagbartoggle<cr>
nnoremap <silent> <f8> :tagbartoggle<cr>
nnoremap <leader>t :tagbartoggle<cr>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0    " sort by sourcefile
"let g:tagbar_show_linenumbers = 1
set updatetime=1000    " ms update
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red



" for airline
let g:airline_powerline_fonts=1
let g:airline_theme = 'wombat'
let g:airline#extensions#tabline#enabled = 1
function! Arilineinit()
    let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
    let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%f'])
    "let g:airline_section_c = airline#section#create(['filetype'])
    let g:airline_section_x = airline#section#create(['%p'])
    let g:airline_section_y = airline#section#create(['%b'])
    let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunc
autocmd vimenter * call Arilineinit()

" change tab
nnoremap <leader><left> :tabprevious<cr>
nnoremap <leader><right> :tabnext<cr>
" https://stackoverflow.com/questions/15583346/how-can-i-temporarily-make-the-window-im-working-on-to-be-fullscreen-in-vim
nnoremap tt :tab split<cr>

" 高亮当前选中单词
autocmd cursormoved * exe exists("hlundercursor")?hlundercursor?printf('match incsearch /\v\<%s\>/', escape(expand('<cword>'), '/\')):'match none':""
nnoremap <silent> <f3> :exe "let hlundercursor=exists(\"hlundercursor\")?hlundercursor*-1+1:1"<cr>


" rst书写插件
let proj1 = { 'path': '~/program/python-web-guide',}
let g:riv_projects = [proj1]

" plug 'suan/vim-instant-markdown', :instantmarkdownpreview
let g:instant_markdown_autostart = 0
let g:vim_markdown_conceal = 0

" ctrlp, 在~/.agignore添加一行node_modules
" https://stackoverflow.com/questions/24479101/vim-ctrlp-not-parsing-ag-silver-search-ignore-option-correctly
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|swp|pyc|pyo)$',
  \ }
if executable('ag')
  " use the silver searcher https://github.com/ggreer/the_silver_searcher
  set grepprg=ag\ --nogroup\ --nocolor
  " use ag in ctrlp for listing files. lightning fast, respects .gitignore
  " and .agignore. ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
else
  "ctrl+p ignore files in .gitignore
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif


"http://vimawesome.com/plugin/scss-syntax-vim
au bufread,bufnewfile *.scss set filetype=scss.css


"http://vimawesome.com/plugin/rainbow-parentheses-vim   花里胡哨的彩虹括号^_^
"http://www.wklken.me/posts/2015/06/07/vim-plugin-rainbowparentheses.html
let g:rbpt_colorpairs = [
    \ ['brown',       'royalblue3'],
    \ ['darkblue',    'seagreen3'],
    \ ['darkgray',    'darkorchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'royalblue3'],
    \ ['darkred',     'seagreen3'],
    \ ['darkmagenta', 'darkorchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'royalblue3'],
    \ ['darkmagenta', 'darkorchid3'],
    \ ['darkblue',    'firebrick3'],
    \ ['darkgreen',   'royalblue3'],
    \ ['darkcyan',    'seagreen3'],
    \ ['darkred',     'darkorchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'seagreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"au vimenter * rainbowparenthesestoggle
"au syntax * rainbowparenthesesloadround
"au syntax * rainbowparenthesesloadsquare
"au syntax * rainbowparenthesesloadbraces


"语法检查配置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" 评论配置
" let g:nerdspacedelims = 1
let g:nerdtrimtrailingwhitespace = 1


"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<up>']

 "比较喜欢用tab来选择补全...
"function! mytabfunction ()
    "let line = getline('.')
    "let substr = strpart(line, -1, col('.')+1)
    "let substr = matchstr(substr, "[^ \t]*$")
    "if strlen(substr) == 0
        "return "\<tab>"
    "endif
    "return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
"endfunction
"inoremap <tab> <c-r>=mytabfunction()<cr>


let g:largefile=1


" for golang https://github.com/fatih/vim-go
" https://github.com/fatih/vim-go-tutorial
let g:go_version_warning = 0
set autowrite
autocmd filetype go nmap <leader>b  <plug>(go-build)
autocmd filetype go nmap <leader>r  <plug>(go-run)
let g:go_list_type = "quickfix"
autocmd bufnewfile,bufread *.go setlocal noexpandtab tabstop=4 shiftwidth=4
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['golint']
let g:go_metalinter_autosave = 1


" for html
autocmd bufnewfile,bufread *.html setlocal expandtab tabstop=2 shiftwidth=2

" for json
let g:vim_json_syntax_conceal = 0
autocmd filetype json,javascript,html,jsx,javascript.jsx setlocal ts=2 sts=2 sw=2 expandtab

" https://github.com/wincent/wincent/blob/bff31c32e427c5913d1eed0b0c1b3da24e8ba8ba/roles/dotfiles/files/.vim/plugin/settings.vim#l38
if has('folding')
  if has('windows')
	set fillchars=vert:┃              " box drawings heavy vertical (u+2503, utf-8: e2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

set formatoptions+=n                  " smart auto-indenting inside numbered lists
set guioptions-=t                     " don't show toolbar
set hidden                            " allows you to hide buffers with unsaved changes without being prompted
"set highlight+=c:linenr               " blend vertical separators with line numbers
set laststatus=2                      " always show status line
set lazyredraw                        " don't bother updating screen during macro playback

" 退出快捷键
inoremap jj <esc>`^
inoremap hhh <esc>`^
inoremap kkk <esc>`^
inoremap lll <esc>`^
inoremap ooo <esc>`^o
inoremap <c-k> <esc>`^
inoremap <leader>w <esc>:w!<cr>
noremap <leader>e :q<cr>
noremap <leader>e :qa!<cr>
noremap <leader>b :bd<cr>
noremap <leader>s :vs<cr>  " vertical split
noremap <leader>r :e!<cr>  " reload without save
noremap <leader>w :w!<cr>

" https://github.com/lfv89/vim-interestingwords 高亮感兴趣的 word
nnoremap <silent> <leader>f :call interestingwords('n')<cr>
nnoremap <silent> <leader>f :call uncolorallwords()<cr>

" https://github.com/jaxbot/semantic-highlight.vim
nnoremap <leader>h :semantichighlighttoggle<cr>

" 禁止 startify 自动切换目录
let g:startify_change_to_dir = 0


" solarized 主题
" let g:solarized_termtrans = 1
" set background=dark
" colorscheme solarized
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorschema hybrid, https://github.com/w0ng/vim-hybrid
set background=dark
silent! colorscheme hybrid


" 用 ,a 搜索当前 cursor 下单词
if executable('ag')
    noremap <leader>a :Ag! -w "<cword>"<cr>
else
    noremap <Leader>a :Ack <cword><cr>
endif

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Plug 'fullybaked/toggle-numbers.vim'
nmap ,n :LineNumberToggle<cr>
" Resize
nmap ,. :vertical resize +3<CR>
nmap ,/ :vertical resize -3<CR>
" https://github.com/ianva/vim-youdao-translater settings
vnoremap <silent> <C-Y> :<C-u>Ydv<CR>
nnoremap <silent> <C-Y> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>

" add :FormatJSON command, https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python3 -c "import json, sys, collections; print(json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2))"
com! FormatJSONPy3 %!python3 -m json.tool
com! FormatJSONPy2 %!python -m json.tool
com! FormatJSONPy2Utf8 %!python -c "import json, sys, collections; print json.dumps(json.load(sys.stdin, object_pairs_hook=collections.OrderedDict), ensure_ascii=False, indent=2)"


" sudo pip install yamllint
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Setting up how to display whitespace characters
set list
set listchars=tab:⇥\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~


" javascript plugin config
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#print_width = 120
let g:prettier#exec_cmd_async = 1
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#bracket_spacing = 'true'

" ale config
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_linters = {'python': []}


let &t_SI = "\<Esc>]12;yellow\x7"
let &t_SR = "\<Esc>]12;red\x7"
let &t_EI = "\<Esc>]12;blue\x7"

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-g>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-p>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'
