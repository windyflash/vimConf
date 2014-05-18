""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��������  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ʾ���  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shortmess=atI					"������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ 
syntax on									"�﷨���� 
au GUIEnter * simalt ~x   "����ʱ��󻯴���
set number								"��ʾ�к� 						
set go=										"��Ҫͼ�ΰ�ť
color wombat							"���ñ������� 
"set background=dark
set cursorline						"ͻ����ʾ��ǰ��
"set ruler								"״̬����� 
set nocompatible 					"�ر�vi����ģʽ
set guioptions-=T					"���ع�����
set guioptions-=m					"���ز˵���
set cmdheight=1						"�趨�����е�����Ϊ 1
set laststatus=2					"��ʾ״̬��(Ĭ��ֵΪ 1, �޷���ʾ״̬��)
filetype on								"����ļ�����

"������״̬����ʾ����Ϣ
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

"set showcmd							"�����������ʾ�������������Щ

"����gui����
if has("gui_running")
  set guifont=Consolas:h12
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ����  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8 														"�������ã�ʹ������
set helplang=cn 																		"ʹ�����İ���
set fileencodings=ucs-bom,utf-8,gbk,default,latin1 	"����utf8����

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ����  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autochdir               		"�Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autoread										"�Զ���ȡ�ⲿ����
set nobackup										"��ֹ����
set noswapfile									"��ֹ��ʱ�ļ�
set backupcopy=yes          		"���ñ���ʱ����ΪΪ����
set backspace=indent,eol,start	"���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���
set showmatch               		"��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ����
set matchtime=2             		"������ת��ƥ�����ŵ�ʱ��
set smartindent             		"��������ʱʹ�������Զ�����
set foldenable              		"��ʼ�۵�
set foldmethod=marker       		"�����﷨�۵�
set foldcolumn=4            		"�����۵�����Ŀ��
setlocal foldlevel=3        		"�����۵�����Ϊ
set foldopen=all
set foldclose=all           		"����Ϊ�Զ��ر��۵� 
set confirm											"�ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set smartindent 								"�Զ�����
set cindent 										"c�����Զ�����
set tabstop=4 									"Tab���Ŀ��
set softtabstop=4 							"ͳһ����Ϊ4
set shiftwidth=4
set noexpandtab 								"��Ҫ�ÿո�����Ʊ��
set smarttab 										"���кͶο�ʼ��ʹ���Ʊ��
set diffexpr=MyDiff()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �������  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Ա��ֶԴ�Сд����
set nowrapscan              " ��ֹ���������ļ�����ʱ��������
set incsearch               " ������������ʱ����ʾ�������
set hlsearch                " ����ʱ������ʾ���ҵ����ı�

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on   "�������

"ctags
set tags=tags;
set autochdir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0										"����VIM���Զ���taglist����
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0							"ѡ��tag�󲻹ر�taglist
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Use_SingleClick = 1							"����tag��ת
let Tlist_Exit_OnlyWindow = 1							"���taglist���������һ�����ڣ��˳�vim
"let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1			"��taglist����ʱ�����뽹����taglist������
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Show_One_File = 1            		"��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Use_Right_Window = 1         		"���Ҳര������ʾtaglist����


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_enableAtStartup = 0																	"ͣ�� AutoComplPop.
let g:neocomplcache_enable_at_startup = 1											"���� neocomplcache
let g:neocomplcache_enable_smart_case = 1											"���� smartcase. ���������д��ĸʱ�����ִ�Сд
let g:neocomplcache_min_syntax_length = 3											"��С�﷨�ؼ��ʳ���
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 			"<TAB>: ����

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���� 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :NERDTreeToggle<CR>
map <F9> :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	���ֺ���
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

"�Զ�����vimrc
autocmd! bufwritepost _vimrc source %