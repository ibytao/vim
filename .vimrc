call pathogen#infect()
call pathogen#helptags()

" Editing behaviour {{{
syn on                      "语法支持
set laststatus=2            "始终显示状态栏
set tabstop=4               "一个制表符的长度
set softtabstop=4           "一个制表符的长度（可以大于tabstop）
set shiftwidth=4            "一个缩进的长度
set expandtab               "使用空格替代制表符
set smarttab                "智能制表符
set autoindent              "自动缩进
set smartindent             "只能缩进
set number                  "显示行号
set ruler                   "显示位置指示器
set nobackup                "设置取消备份 禁止临时文件生成
set noswapfile
set backupdir=~/.vim/tmp    "设置备份文件目录
set directory=~/.vim/tmp    "设置临时文件目录
set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠
set encoding=utf-8          "设置编码方式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1      "自动判断编码时 依次尝试一下编码
set hidden                  "设置隐藏缓冲区
set incsearch               "设置搜索预览结果
"{{{

"theme mustang_silent, molokai, railscat, kellys, molokai_deep, wombat256, mustang, mustang_silent, badwolf
colorscheme mustang_silent

let mapleader=","

"<C-l> 通常用于清除并重绘显示屏(参见 :h CTRL-L )。而新的映射项,是在 原有基础之上增加了暂时关闭查找高亮的功能。
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>       

" NERDTree settings {{{
nnoremap <TAB> :NERDTreeToggle<CR>
"nnoremap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Quit on opening files from the tree
let NERDTreeQuitOnOpen=1

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

" Use a single click to fold/unfold directories and a double click to open
" files
let NERDTreeMouseMode=2

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" }}}

" neocomplcache settings {{{
let g:neocomplcache_temporary_dir = $HOME.'/.vim/tmp/neocomplcache'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : $HOME.'/.vim/tmp/',
    \ 'vimshell' : $HOME.'/.vim/tmp/vimshell_hist',
    \ 'scheme' : $HOME.'/.vim/tmp/gosh_completions'
    \ }

let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" }}}

" Powerline configuration ------------------------------------------------- {{{
"let g:Powerline_symbols = 'compatible'
let g:Powerline_symbols = 'fancy'
" }}}

nnoremap <leader>l :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/homebrew/bin/ctags'
let g:tagbar_width = 30

let g:ctrlp_cache_dir = $HOME.'/.vim/tmp/cache/ctrlp'

