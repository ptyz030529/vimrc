" _vimrc - gvim for windows 配置文件
"
" (c) Copyright 2010 ptyz030529. All Rights Reserved.
"
"    创建者  : ptyz030529 <seikou05201202@gmail.com>
"    创建日期: 2010-09-02
"    最后变更: 2013-01-03
set nocompatible  "关闭兼容模式
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

behave mswin
""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin  'VundleVim/Vundle.vim'

" vundle

Plugin 'vim-scripts/genutils'         " vim通用的函数
Plugin 'tomtom/tlib_vim'              " vim通用的函数
Plugin 'vim-scripts/L9'               " 自动补全AutoComplPop的依赖库
"****Vim优化

Plugin  'vim-scripts/LargeFile'        " 使大文件更迅速的被加载和编辑
Plugin  'vim-scripts/bufexplorer.zip'  " 查看已打开文件
Plugin  'godlygeek/tabular'            " 将光标移到要格式化的那一行,格式化文本插件 命令{:Tab /:} '/'后面跟要格式化的文本符号
Plugin  'vim-scripts/lookupfile'       " 文件查找
Plugin  'vim-scripts/mru.vim'          " 最近打开文件记录
Plugin  'vim-scripts/YankRing.vim'     " 剪贴板
Plugin  'vim-scripts/grep.vim'         " 文件内容查找
Plugin  'terryma/vim-multiple-cursors' " sublime text的多重光标选取功能, <C-n>选中光标下的单词, <C-p>往回选一个, <C-x>跳过下一个相同单词,按下c进行修改.<Esc> 退出
Plugin  'scrooloose/nerdtree'          " 侧边栏文件导航
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin  'bling/vim-airline'             "状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin  'tpope/vim-surround'           " 包裹符号处理插件, cs<{ = 把<替换成{, ysiw[ = 把选中单词用[]包裹, yss{ = 把选中语句用{}包裹, ds{ = 删除选中周围的{}
Plugin  'Yggdroot/indentLine'          "缩进线
Plugin  'margaglia/Vim_Trinity_Plugin'  "整合taglist 和nerdtree
"helld workd

"****样式主题
Plugin  'altercation/vim-colors-solarized'

" ****缩进&语法高亮

Plugin  'groenewege/vim-less'                    " less 语法高亮, 通过lessc也可以把less编译成css
Plugin  'hail2u/vim-css3-syntax'                 " css3, scss语法高亮.
Plugin  'vim-scripts/nginx.vim'                  " nginx配置文件语法高亮
Plugin  'vim-scripts/httplog'                    " http server log文件语法高亮
Plugin  'vim-scripts/apachestyle'                " apache配置文件语法高亮
Plugin  'vim-scripts/apachelogs.vim'             " apache log文件语法高亮
Plugin  'FuDesign2008/backbone-syntax.vim'       " jQuery, underscore.js and backbone.js 语法高亮
Plugin  'plasticboy/vim-markdown'                " Markdown语法高亮
Plugin  'pangloss/vim-javascript'                " javascript语法高亮
Plugin  'othree/html5.vim'                       " html5 语法高亮 svg support
Plugin  'othree/javascript-libraries-syntax.vim' " javascript 库语法高亮
Plugin  'paulyg/Vim-PHP-Stuff'                   " php5.3语法高亮
Plugin  'tpope/vim-haml'                         " Haml, Sass, and SCSS语法高亮
Plugin  'nono/vim-handlebars'                    " handlebars语法高亮
Plugin  'othree/yajs.vim'                        " es6语法高亮
Plugin 'mxw/vim-jsx'
Plugin  'lukaszb/vim-web-indent'                 " web缩进
Plugin  'skammer/vim-css-color'                  " css color

"****格式优化

Plugin  'vimchina/vim-fencview'             " 自动识别文件编码
Plugin  'vim-scripts/php.vim-html-enhanced' " 优化内嵌在php代码中的html

"****工具
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/vimshell.vim'
Plugin  'Rykka/colorv.vim'                 " vim颜色选择器, (<leader>cd): show a GUI color picker.  (<leader>cn): show color name list window. :ColorV (<leader>cv): show ColorV window
Plugin  'suan/vim-instant-markdown'        " 实时预览Markdown
Plugin  'scturtle/vim-instant-markdown-py' " 实时预览Markdown
Plugin  'scrooloose/vim-fugitive'          " git tool. Gstatus= git status. Gcommit= git commit. Gwrite = git add
Plugin 'airblade/vim-gitgutter'
"Plugin  'scrooloose/nerdcommenter' 

"****编程辅助
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin  'SirVer/ultisnips'               " snippets
Plugin  'honza/vim-snippets'             " snippets format
Plugin  'vim-scripts/DoxygenToolkit.vim' " 自动生成各种注释
Plugin  'edsono/vim-matchit'             " 使%能够匹配html标签
Plugin  'maksimr/vim-jsbeautify'         " js美化插件
Plugin  'vim-scripts/assistant'          " 查看php，js默认函数的中文说明
Plugin  'scrooloose/syntastic'           " 语法格式检查工具
Plugin  'tomtom/tcomment_vim'            " 注释 gcc=注释, 选择后g>=注释选择区, gc<Count>c{motion}=注释几行, g<c=取消注释
Plugin  'Raimondi/delimitMate'           " 自动补全逗号
Plugin  'docunext/closetag.vim'          " 自动关闭标签
Plugin  'Valloric/YouCompleteMe'         " 自动补全
Plugin 'marijnh/tern_for_vim'
Plugin  'mattn/emmet-vim'                " 快速html
call vundle#end()

""""""""""""""""""""""""""""""
" =>自动命令
""""""""""""""""""""""""""""""
" auto expand tab to blanks
autocmd FileType c,cpp set expandtab
" 打开文件时，总是跳到退出之前的光标处
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif
if has("autocmd") && v:version>600
	au BufRead,BufNew *.vim map <buffer> <leader><space> :w!<cr>:source %<cr>
endif
autocmd! BufRead,BufNewFile *.markdown set filetype=mkd
autocmd! BufRead,BufNewFile *.md       set filetype=mkd
autocmd! BufRead,BufNewFile,BufReadPost *.snippets set filetype=snippets
autocmd! BufRead,BufNewFile *.json set filetype=json
autocmd! BufRead,BufNewFile *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.vm set filetype=html
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd BufNewFile,BufRead *.conf set filetype=config
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd BufNewFile,BufRead *.vm set filetype=html
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType haskell setlocal commentstring=--\ %s
autocmd BufNewFile,BufRead *.rss setfiletype xml
autocmd FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG
    \ call setpos('.', [0, 1, 1, 0])
au VimEnter * :call SetTabLabel()
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufRead,BufNewFile *.json setf json
autocmd BufNewFile,BufReadPost *.xtpl set filetype=html
autocmd BufNewFile,BufRead *.vm set ft=velocity
autocmd BufNewFile,BufRead *.xtpl set ft=html
autocmd BufNewFile,BufRead *.ejs set ft=html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xtpl set ft=html
autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
autocmd FocusGained, BufEnter * :silent! !
autocmd FileType python syn keyword pythonDecorator True None False self
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja
autocmd BufNewFile,BufRead *.mako set ft=mako
autocmd BufRead,BufNewFile *.md set filetype=markdown
au! BufRead,BufNewFile *.bat
    \ if getline(1) =~ '--\*-Perl-\*--' | setf perl | endif
autocmd WinEnter call SetTabLabel()
autocmd BufEnter call SetTabLabel()
"https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
if expand("%:p")
autocmd BufEnter * lcd %:p:h
endif
"http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
let s:default_path = escape(&path, '\ ') " store default value of 'path'

" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
autocmd BufRead *
    \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
    \ exec "set path-=".s:tempPath |
    \ exec "set path-=".s:default_path |
    \ exec "set path^=".s:tempPath |
    \ exec "set path^=".s:default_path
autocmd Filetype *
    \if &omnifunc == "" |
    \setlocal omnifunc=syntaxcomplete#Complete |
    \endif
" Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" Restore cursor position upon reopening files {{{
autocmd BufReadPost *
  \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" }}}
" gnuplot syntax highlighting
au BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
""""""""""""""""""""""""""""""
" =>自定义函数
""""""""""""""""""""""""""""""
" {{{1
"比较函数 MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"判断操作系统
function! MySys()
    if has("win16") || has("win32") || has("win64") || has("win95")
        return "windows"
    elseif has("unix")
        return "linux"
    endif
endfunction


function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
endfunction
function! SetTabLabel()
  set guitablabel=%{GuiTabLabel()}
endfunction

"}}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 通用配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"{{{1

"==========>多语言设置<=========="
"{{{2
if has("multi_byte")
	set fileencodings=ucs-bom,utf-8,chinese,taiwan,japan,korea,latin1
	if v:lang =~ "^zh_CN"
		"简体中文
		set encoding=chinese
		set termencoding=chinese
		if &fileencoding == ''
			set fileencoding=chinese
		endif
	elseif v:lang =~ "^zh_TW"
		"繁体中文
		set encoding=taiwan
		set termencoding=taiwan
		if &fileencoding == ''
			set fileencoding=taiwan
		endif
	elseif v:lang =~ "^ja_JP"
		"日语
		set encoding=japan
		set termencoding=japan
		if &fileencoding == ''
			set fileencoding=japan
		endif
	elseif v:lang =~ "^ko"
		"韩语
		set encoding=korea
		set termencoding=korea
		if &fileencoding == ''
			set fileencoding=korea
		endif
	endif
	"支持UTF-8
	if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
		set encoding=utf-8
	endif
else
	echoerr 'Sorry, this version of (g)Vim was not compiled with "multi_byte"'
endif
"}}}


"==========>颜色外观<=========="
"{{{2
"****主题
set background=dark
colorscheme solarized
"****字体
set gfn=Ubuntu\ Mono\ 12
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set termencoding=utf-8
"****高亮
syntax enable     " 语法高亮
set cursorline    " 高亮当前行
"****外观
set mouse=a       " 设置鼠标支持
set number        " 显示行号
set guioptions+=b " 添加水平滚动条
set ruler         " 开启右下角的光标位置显示
"}}}

"==========>基础设置<=========="
"{{{2
filetype plugin indent on " 打开文件类型，插件以及缩进功能
syntax enable             " 语法高亮
set ai!                   " 自动对齐
set autochdir             " 自动切换当前目录为当前文件所在的目录
set clipboard+=unnamed    " 共享外部剪切板
set completeopt=longest,menuone
set conceallevel=0
set diffexpr=MyDiff() " 设置自定义diff
set helpheight=10
set helplang=cn
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set lazyredraw "当运行宏时，不重绘 
set magic  " For regular expressions turn magic on
set mat=4  " How many tenths of a second to blink
set pumheight=10
set report=0
set scrolloff=5 " 上下可视行数
set switchbuf=useopen "显示已打开窗口，快速修复缓冲区，而不是打开新文件 
"****设置leader
let mapleader=","
let g:mapleader = ","
"****设置dict
set dictionary+=/usr/share/dict/words
set dictionary+=~/.vim/dict/
set tags=./tags;/,~/.vimtags
" Make tags placed in .git/tags file available in all levels of a repository
let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
if gitroot != ''
  let &tags = &tags . ',' . gitroot . '/.git/tags'
endif
"****搜索
set ignorecase " 搜索时忽略大小写
set incsearch  " 增量搜索
set hlsearch   " 高亮显示搜索结果

"****命令行
set history=100 " 设置冒号命令和搜索命令的命令历史列表的长度
set showcmd     " 显示未完成指令
set wildmenu    " 在输入命令时列出匹配项目 命令行补全
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class " tab键的自动完成现在会忽略这些
if has("win16") || has("win32")
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif
set wildmode=list:longest,full "增强模式打开列表 
"}}}

"==========>缩进排版<=========="
"{{{2
set autoindent			"自动缩进
set cindent "打开自动 C 程序缩进。
"set cinoptions=:0,l1,g0,(0,w1,W4
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set cinwords=if,elseif,else,for,while,try,except,finally,def,class
set nowrap        " 设置自动换行
set shiftwidth=2 " 设置(行首)缩进宽度
set showmatch     " 高亮显示匹配的括号
set smartindent   " 智能对齐方式
set smartcase     " if there are caps,go case-sensitive
set textwidth=10000
set whichwrap=b,s,h,l,<,>,>h,[,]  " 允许backspace和光标键跨越行边界 

"****相关按键格式设置

set backspace=2
set backspace=indent,eol,start " 能直接删除缩进
set expandtab                  " 输入tab时自动将其转化为空格
set smarttab                   " 在行首输入tab时插入宽度为shiftwidth的空白，在其他地方按tabstop和softtabstop处理
set softtabstop=2              " 设定编辑模式下按<TAB><Backspace>等移动的宽度
set tabstop=2                  " tab键宽度
set virtualedit=onemore        " 允许光标移动到刚刚超过行尾的位置

"****折叠

set foldenable         " 默认代码折叠
set foldmethod=diff   " 设置折叠的方式
set foldlevel=20     " don't autofold anything, but can still fold manually
set foldopen-=search " 在查找时关闭折叠
set foldopen-=undo   " 重做时关闭折叠

"}}}

"==========>文件备份<=========="
"{{{2
set nobackup
"set backup
"let $PROJECTS = 'D:/Projectes'  
"let $PYSPACE  = $PROJECTS.'/PythonSpace'  
"let $RBSPACE  = $PROJECTS.'/RubySpace'  
"let $VIMDATA  = $VIM.'/vimdata'  
"let $VIMFILES = $VIM.'/vimfiles'  
"set backupdir=$VIMDATA/backup    "设置备份文件所在目录  
"set directory=$VIMDATA/temp  "设置swap文件所在目录  
"set runtimepath+=$VIMDATA      " add this path to rtp, support GLVS  
"set makeef=$VIMDATA/make_error_file_##.err           " the errorfile for :make and :grep  
"set path+=$VIMRUNTIME/**  
"}}} 


"==========>状态栏配置<=========="
"{{{2

"****设置状态栏显示状态
	set laststatus=2
	set statusline=
	set statusline+=%2*%-3.3n%0*\ " buffer number
	set statusline+=%f\ " file name
	set statusline+=%h%1*%m%r%w%0* " flag
	set statusline+=[
	if v:version >= 600
		set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
		set statusline+=%{&encoding}, " encoding
	endif
	set statusline+=%{&fileformat}] " file format
	if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
		set statusline+=\ %{VimBuddy()} " vim buddy
	endif
	set statusline+=%= " right align
	set statusline+=%2*0x%-8B\ " current char
	set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

"****设置特殊窗口的状态栏
	if has("autocmd")
		au FileType qf
		\if &buftype == "quickfix" |
		\setlocal statusline=%2*%-3.3n%0* |
		\setlocal statusline+=\ \[Compiler\ Messages\] |
		\setlocal statusline+=%=%2*\ %<%P |
		\endif

		fun! FixMiniBufExplorerTitle()
			if "-MiniBufExplorer-" == bufname("%")
				setlocal statusline=%2*%-3.3n%0*
				setlocal statusline+=\[Buffers\]
				setlocal statusline+=%=%2*\ %<%P
			endif
		endfun

		if v:version>=600
			au BufWinEnter *
			\let oldwinnr=winnr() |
			\windo call FixMiniBufExplorerTitle() |
			\exec oldwinnr . " wincmd w"
		endif
	endif

"****设置标题栏

if has('title') && (has('gui_running') || &title)
	set titlestring=
	set titlestring+=%f\ " file name
	set titlestring+=%h%m%r%w " flag
	set titlestring+=\ -\ %{v:progname} " program name
endif
"}}}

"}}}

"==========>全局快捷命令<=========="
"切换行号显示
map <f7> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>  
""""""""""""""""""""""""""""""

" =>编程语言
""""""""""""""""""""""""""""""
"****PHP 相关配置
"****JavaScript 相关配置
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jQuery
au BufRead,BufNewFile jquery-*.js set ft=javascript syntax=jQuery
au BufRead,BufNewFile jQuery.*.js set ft=javascript syntax=jQuery
au BufRead,BufNewFile jQuery-*.js set ft=javascript syntax=jQuery
let javascript_enable_domhtmlcss=1 "js语法高亮脚本的设置
let b:javascript_fold=1
"****Python 相关配置
"****Java 相关配置
"****XML&&HTML相关配置
let xml_use_xhtml = 1
let html_use_css = 1
let html_number_lines = 0
let use_xhtml = 1
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
"****CSS 相关配置
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

""""""""""""""""""""""""""""""
" =>相关插件配置
""""""""""""""""""""""""""""""
"{{{1
"==========>airline<=========="
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⭠'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_theme='dark'
"==========>bufexplorer<=========="
let g:bufExplorerDefaultHelp = 1
let g:bufExplorerDetailedHelp = 0

nmap <A-l> :BufExplorer <CR> 
"==========>DoxygenToolkit<=========="
"let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="JimbaChen" 
let g:DoxygenToolkit_licenseTag="Mit license"
let g:DoxygenToolkit_briefTag_funcName="yes"
nmap <leader>da :DoxAuthor<CR>
nmap <leader>df :Dox<CR>
nmap <leader>db :DoxBlock<CR>
nmap <leader>dc a/*  */<LEFT><LEFT><LEFT>
"
"==========>taglist<=========="

" 设置ctags命令 
"if MySys() == "windows"               
"    let g:Tlist_Ctags_Cmd = $VIMRUNTIME.'\ctags'
"	.'\ctags'
"	.'\ctags'
"endif
"let g:Tlist_Auto_Update=1
"let g:Tlist_Process_File_Always=1
"let Tlist_File_Fold_Auto_Close=1       "自动折叠当前非编辑文件的方法列表
"let g:Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim
"let g:Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
"let g:Tlist_WinWidth=25
"let g:Tlist_Enable_Fold_Column=0
"let g:Tlist_Auto_Highlight_Tag=1
"function! UpdateTags()
"	silent !ctags -R --fields=+ianS --sort --extra=+q
"endfunction

"==========>tagbar<=========="
"let g:tagbar_left = 1
"let g:tagbar_width = 25
"let g:tarbar_phpctags_bin ='D:\develop\Vim\vimfiles\techlivezheng-tagbar-phpctags'
"nmap <F10>  :TarBarToggle<CR>
"==========>Emmet<=========="
nmap <c-e> :call emmet#expandAbbr(3,"") <CR>
"==========>fencview<=========="
let g:fencview_autodetect = 1           

"==========>Grep<=========="

if MySys() == "windows"
    let Grep_Path = 'D:\develop\GnuWin32\bin\grep.exe'
    let Egrep_Path = 'D:\develop\GnuWin32\bin\egrep.exe'
    let Fgrep_Path = 'D:\develop\GnuWin32\bin\fgrep.exe'
endif
nmap <F3> :Grep -nR<cr>

"==========>indentLine<=========="
map <leader>il :IndentLinesToggle<CR>
"==========>Jsbeautify<=========="
nmap                                 <leader> fj :call Jsbeautify()<CR>
autocmd FileType javascript noremap  <leader> fj :call JsBeautify()<cr>
autocmd FileType json noremap        <leader> fj :call JsonBeautify()<cr>
autocmd FileType jsx noremap         <leader> fj :call JsxBeautify()<cr>
autocmd FileType html noremap        <leader> fj :call HtmlBeautify()<cr>
autocmd FileType css noremap         <leader> fj :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <leader> fj :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap       <leader> fj :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap        <leader> fj :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap       <leader> fj :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap        <leader> fj :call RangeCSSBeautify()<cr>
"==========>LookupFile setting<=========="
if filereadable(".tags.filename")
	let g:LookupFile_TagExpr='"./tags.filename"' "设置tag文件的名字
endif
let g:LookupFile_MinPatLength=2 "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern=0 "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory=1 "保存查找历史
let g:LookupFile_AlwaysAcceptFirst=1 "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles=0 "不允许创建不存在的文件

nmap  <F2> <Plug>LookupFile<cr>
nmap <leader>lk :LUTags<cr>
nmap <leader>ll :LUBufs<cr>
nmap <leader>lw :LUWalk<cr>
"==========>MRU<=========="
let MRU_File = $VIMRUNTIME.'/vimdata/_vim_mru_files'  " which file to save mru entries  
let MRU_Max_Entries = 20                   " max mru entries in _vim_mru_files 

nmap  <F4> :MRU<cr>

"==========>NERDTree<=========="
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25
let NERDTreeShowLineNumbers=0
let g:NERDTreeDirArrows=0
nmap <F11>  :NERDTreeToggle<CR>
"==========>syntastic<=========="
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_check_on_open=0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=1
let g:syntastic_enable_signs=1
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol="E"
let g:syntastic_warning_symbol="W"
highlight SyntasticError guibg=#2F0000
nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprevious<CR>
"prerequisite:
"  npm packages:
"    eslint jsxhint babel-eslint eslint-plugin-react json-lint jshint
"let g:syntastic_javascript_checkers = ['eslint',
"    \'jsxhint', 'babel-eslint', 'eslint-plugin-react', 'json-lint',
"    \'jshint', 'jscs']
let g:syntastic_json_checkers=['jsonlint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_python_exec="/usr/local/bin/python3"
let g:syntastic_sass_checkers = ['sass', 'sassc']
"let g:syntastic_scss_checkers = ['sass', 'sassc', 'scsslint']
let g:syntastic_php_checkers = ['php']
"let g:syntastic_ruby_checkers = ['robocop']
"let g:syntastic_coffee_checkes = ['coffeelint']
let g:syntastic_shell_checkers = ['shellcheck']
" Set up the arrays to ignore for later
if !exists('g:syntastic_html_tidy_ignore_errors')
    let g:syntastic_html_tidy_ignore_errors = []
endif
if !exists('g:syntastic_html_tidy_blocklevel_tags')
    let g:syntastic_html_tidy_blocklevel_tags = []
endif
" Try to use HTML5 Tidy for better checking?
let g:syntastic_html_tidy_exec = '/usr/local/bin/tidy5'
" AP: honestly can't remember if this helps or not
" installed with homebrew locally

" Ignore ionic tags in HTML syntax checking
" See http://stackoverflow.com/questions/30366621
" ignore errors about Ionic tags
let g:syntastic_html_tidy_ignore_errors += [
      \ "<ion-",
      \ "discarding unexpected </ion-"]
" Angular's attributes confuse HTML Tidy
let g:syntastic_html_tidy_ignore_errors += [
      \ " proprietary attribute \"ng-"]
" Angular UI-Router attributes confuse HTML Tidy
let g:syntastic_html_tidy_ignore_errors += [
      \ " proprietary attribute \"ui-sref"]
" Angular in particular often makes 'empty' blocks, so ignore
" this error. We might improve how we do this though.
" See also https://github.com/scrooloose/syntastic/wiki/HTML:---tidy
" specifically g:syntastic_html_tidy_empty_tags
let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]
" Angular ignores
let g:syntastic_html_tidy_blocklevel_tags += [
      \ 'ng-include',
      \ 'ng-form'
      \ ]
" Angular UI-router ignores
let g:syntastic_html_tidy_ignore_errors += [
      \ " proprietary attribute \"ui-sref"]
"==========>txtbrowser<=========="
au BufEnter *.txt setlocal ft=txt

"==========>ultisnips<=========="
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsUsePythonVersion     = 2
let g:UltiSnipsExpandTrigger       = "<c-tab>"
let g:UltiSnipsListSnippets        = "<c-l>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"==========>yanking<=========="
nmap  <F8> :YRShow <CR> 

"==========>YouCompleteMe<=========="
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
"leave '<tab>', '<c-j>' for ultisnips
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"leave '<s-tab>', '<c-k>' for ultisnips
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}
let g:ycm_semantic_triggers =  {
      \ 'c' : ['->', '.'],
      \ 'objc' : ['->', '.'],
      \ 'ocaml' : ['.', '#'],
      \ 'cpp,objcpp' : ['->', '.', '::'],
      \ 'perl' : ['->'],
      \ 'php' : ['->', '::'],
      \ 'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
      \ 'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
      \ 'ruby' : ['.', '::'],
      \ 'lua' : ['.', ':'],
      \ 'erlang' : [':'],
      \}
"}}}

