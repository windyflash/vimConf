""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基础配置  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shortmess=atI					"启动的时候不显示那个援助乌干达儿童的提示 
syntax on									"语法高亮 
au GUIEnter * simalt ~x   "启动时最大化窗口
set number								"显示行号 						
set go=										"不要图形按钮
color wombat							"设置背景主题 
"set background=dark
set cursorline						"突出显示当前行
"set ruler								"状态栏标尺 
set nocompatible 					"关闭vi兼用模式
set guioptions-=T					"隐藏工具栏
set guioptions-=m					"隐藏菜单栏
set cmdheight=1						"设定命令行的行数为 1
set laststatus=2					"显示状态栏(默认值为 1, 无法显示状态栏)
filetype on								"侦测文件类型

"设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

"set showcmd							"输入的命令显示出来，看的清楚些

"设置gui字体
if has("gui_running")
  set guifont=Consolas:h12
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8 														"语言设置，使用中文
set helplang=cn 																		"使用中文帮助
set fileencodings=ucs-bom,utf-8,gbk,default,latin1 	"设置utf8编码

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 操作  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autochdir               		"自动切换当前目录为当前文件所在的目录
set autoread										"自动读取外部更新
set nobackup										"禁止备份
set noswapfile									"禁止临时文件
set backupcopy=yes          		"设置备份时的行为为覆盖
set backspace=indent,eol,start	"不设定在插入状态无法用退格键和 Delete 键删除回车符
set showmatch               		"插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             		"短暂跳转到匹配括号的时间
set smartindent             		"开启新行时使用智能自动缩进
set foldenable              		"开始折叠
set foldmethod=marker       		"设置语法折叠
set foldcolumn=4            		"设置折叠区域的宽度
setlocal foldlevel=3        		"设置折叠层数为
set foldopen=all
set foldclose=all           		"设置为自动关闭折叠 
set confirm											"在处理未保存或只读文件的时候，弹出确认
set smartindent 								"自动缩进
set cindent 										"c语言自动缩进
set tabstop=4 									"Tab键的宽度
set softtabstop=4 							"统一缩进为4
set shiftwidth=4
set noexpandtab 								"不要用空格代替制表符
set smarttab 										"在行和段开始处使用制表符
set diffexpr=MyDiff()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on   "开启插件

"ctags
set tags=tags;
set autochdir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0										"启动VIM后，自动打开taglist窗口
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0							"选择tag后不关闭taglist
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Use_SingleClick = 1							"单击tag跳转
let Tlist_Exit_OnlyWindow = 1							"如果taglist窗口是最后一个窗口，退出vim
"let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1			"打开taglist窗口时，输入焦点在taglist窗口中
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Show_One_File = 1            		"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Use_Right_Window = 1         		"在右侧窗口中显示taglist窗口


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0																	"停用 AutoComplPop.
let g:neocomplcache_enable_at_startup = 1											"启用 neocomplcache
let g:neocomplcache_enable_smart_case = 1											"启用 smartcase. 仅当输入大写字母时，区分大小写
let g:neocomplcache_min_syntax_length = 3											"最小语法关键词长度
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 			"<TAB>: 补完

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :NERDTreeToggle<CR>
map <F9> :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	各种函数
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"自动加载vimrc
autocmd! bufwritepost _vimrc source %