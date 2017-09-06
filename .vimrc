"与pathogen相关"
execute pathogen#infect()
"语法高亮"
syntax on
"显示行号"
set nu!
"关闭匹配高亮"
let loaded_matchparen = 1
"关闭报警铃"
set vb t_vb=
"下一行自动缩进为上一行的格式(除了最后一个缩进是四个空格，其它都是tab!!!)"
"set autoindent"
"自动缩进"
"filetype plugin indent on"
"tab设置成 4 个空格(结果还是tab)"
"set tabstop=4"
"统一缩进为4"
set softtabstop=4
set shiftwidth=4

"set nocompatible    "
"set laststatus=2   " 
"set encoding=utf-8"
"let g:Powerline_symbols = 'unicode'"
"以下属于语法检错配置，在自动或手动模式下都必须保存之后才可以检错，从逻辑上讲这是合理的"
set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
	
	    let g:syntastic_always_populate_loc_list = 1
	    "设置为0取消弹出错误列表"
	        let g:syntastic_auto_loc_list = 0
		"设置为1在打开文件时检错"
		    let g:syntastic_check_on_open = 1
		    "设置为0可以强制关闭报错文件"
		        let g:syntastic_check_on_wq = 0
"设置python检错器"
let g:syntastic_python_checkers=["python"]
"设置python的检错忽略"
let g:syntastic_python_checker_args="--ignore=E501,E225"
"设置cpp11语法检测"
let g:syntastic_cpp_compiler_options = '-std=c++11'
"设置为1忽略头文件中的错误,默认值为0(不忽略)"
let g:syntastic_cpp_remove_include_errors = 0

"以下为NERD Tree配置"
"Vim 打开时自动启动目录树并将光标移动到主窗口"
"autocmd VimEnter * NERDTree"
"autocmd VimEnter * wincmd p"
"映射 ctrl-n 打开/隐藏目录树结构"
map <C-n> :NERDTreeToggle<CR>
" 当除了目录树之外的所有窗口都被关闭时关闭 Vim(但是没有效果...)
"autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif"

"以下为IndentLine配置"
"关闭indentLine插件功能(默认为打开状态)"
"let g:indentLine_enabled = 0"
