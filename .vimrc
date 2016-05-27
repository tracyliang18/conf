execute pathogen#infect()

syntax enable   "开启代码高亮
set background=dark
let g:solarized_termcolors=256
set term=screen-256color
colorscheme solarized

filetype plugin indent on
filetype detect
autocmd BufNewFile *.sh,*.py,*.cpp,*.h,*.cc,*.c,*.js exec ":call SetTitle()"
func SetTitle()
    if &filetype == 'sh'
		call setline(1,"#!/bin/bash")
		call append(line("."), "\# Created Time: ".strftime("%c"))
		call append(line(".")+1, "\# Author: Jiajun Liang")
		call append(line(".")+2, "\# Mail: tracyliang18@gmail.com")
		call append(line(".")+3, "")
    elseif &filetype == 'python'
		call setline(1,"#!/usr/bin/python2")
		call append(line("."), "\# -*- coding:utf-8 -*-")
		call append(line(".")+1, "\# Created Time: ".strftime("%c"))
		call append(line(".")+2, "\# Purpose: TODO")
		call append(line(".")+3, "\# Mail: tracyliang18@gmail.com")
		call append(line(".")+4, "")
		call append(line(".")+5, "if __name__ == \"__main__\":")
		call append(line(".")+6, "    pass")
	else
		call setline(1, "\/*")
		call append(line("."), " * Author: Jiajun Liang")
		call append(line(".")+1, " * Purpose: TODO")
		call append(line(".")+2, " * Created Time: ".strftime("%c"))
		call append(line(".")+3, " * Mail: tracyliang18@gmail.com ")
		call append(line(".")+4, " *\/")
		call append(line(".")+5, "")
    endif
endfunc
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

set autoindent	"自动缩进
"set noautoindent    "不自动缩进
"set smartindent     "智能缩进
set tabstop=4 "缩进显示4个空格长度
set softtabstop=4 "退格键退回缩进长度,expandtab中用
set shiftwidth=4 "每一级缩进的长度
"set noexpandtab "缩进用制表符表示
set expandtab "缩进用空格表示
set backspace=2

au BufNewFile,BufRead *.py exec ":call SetPythonConfig()"
func SetPythonConfig()
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set expandtab
	set autoindent
	set fileformat=unix
	set cc=80
	"set textwidth=79
endfunc
nnoremap <silent> <Leader>l
  \ :if exists('w:long_line_match') <Bar>
  \   silent! call matchdelete(w:long_line_match) <Bar>
  \   unlet w:long_line_match <Bar>
  \ elseif &textwidth > 0 <Bar>
  \   let w:long_line_match = matchadd('ErrorMsg', '\%>'.&tw.'v.\+', -1) <Bar>
  \ else <Bar>
  \   let w:long_line_match = matchadd('ErrorMsg', '\%>80v.\+', -1) <Bar>
  \ endif<CR>

"au BufNewFile,BufRead *.js,*.html,*.css exec ":call SetWebEditConfig()"
"func SetWebEditConfig()
	"set tabstop=2
	"set softtabstop=2
	"set shiftwidth=2
"endfunc

"set fileencodings=utf-8,chinese,latin-1
set encoding=utf-8
set nocompatible

"set mouse=a "允许鼠标操作

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set history=200                        " command line history
if has('persistent_undo')
	set undofile                       " keep an undo record separately for every file
	set undolevels=200
	set undodir=~/.vimtmp/undo
endif
set viminfo+=n$HOME/.vimtmp/viminfo

set timeoutlen=200                     " wait for ambiguous mapping
set ttimeoutlen=0                      " wait for xterm key escape

command -bang -nargs=* Q q<bang>
command -bang -nargs=* Qa qa<bang>
command -bang -nargs=* -complete=file W w<bang> <args>
command -bang -nargs=* -complete=file Wq wq<bang> <args>
command -bang -nargs=* -complete=file WQ wq<bang> <args>

set hlsearch    "开启搜索高亮
"set nohlsearch  "关闭搜索高亮
set incsearch   "输入搜索字符串的同时进行搜索
set ignorecase  "搜索时忽略大小写

set showmode        "开启模式显示
set ruler           "开启光标位置提示
set number	"显示行号
"set relativenumber "显示相对行号
"set nonu            "不显示行号
"hi Pmenu cterm=bold ctermbg=white guibg=white gui=bold
set showcmd
set cmdheight=1 "命令部分高度为1
"set scrolloff=3 "光标移动到buffer的顶部和底部时保持3行距离

set pastetoggle=<F12> "切换粘贴模式

set autoread        "当文件在外部被改变时，Vim自动更新载入
set showmatch       "显示匹配的括号
set nowrap "不自动换行

" manual 手工定义折叠
" indent 更多缩进表示更高级别的折叠
" expr 用表达式来定义折叠
" syntax 用语法高亮来定义折叠
" diff 对没有更改的文本进行折叠
" marker 对文中的标志折叠
"set foldmethod=indent "代码折叠
set foldlevel=100 "启动时不要自动折叠代码
"set foldignore=
"set foldnestmax=1 "只折叠一层
"快速折叠
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
"启动时折叠一层
"autocmd VimEnter * exec ":%foldc"
"
let g:SimpylFold_docstring_preview = 1
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

set switchbuf+=newtab

set cursorline
"hi CursorLine   cterm=NONE ctermbg=0 ctermfg=NONE guibg=white gui=bold
set cursorcolumn
"hi CursorColumn   cterm=NONE ctermbg=0 ctermfg=white guibg=white gui=bold
set sessionoptions-=options  " mksession Don't save options

"Bundle 'vim-powerline'
set laststatus=2
let g:Powerline_colorscheme='solarized256'
set t_Co=256

"Taglist
let Tlist_Show_One_File=1 "只显示一个文件的tags
let Tlist_Exit_OnlyWindow=1 "只剩下taglist时自动退出
map tl :TlistToggle<CR><C-W><C-W>

let g:pep8_map='<F8>'

nnoremap <F5> :GundoToggle<CR>

let g:indentLine_faster = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set runtimepath^=~/.vim/bundle/ctrlp.vim

"恢复光标到关闭前位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let g:ycm_global_ycm_extra_conf = "/home/hewr1993/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_completion = 1
map <s-j>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

abbr ipeb from IPython import embed; embed()
abbr agps import argparse
\<CR>parser = argparse.ArgumentParser()
\<CR>parser.add_argument("-n", "--num", default=0, type=int, help="")
\<CR>parser.add_argument("-g", "--debug", action="store_true")
\<CR>args = parser.parse_args()
abbr cv2show import cv2
\<CR>cv2.imshow('img', img)
\<CR>if chr(cv2.waitKey(0) & 0xFF) == 'q':
\<CR>exit()
abbr basedir BASE_DIR = os.path.dirname(os.path.realpath(__file__))

" Source .../.vimrc and use .../tags in ancestor of source directory.
" useful when you have source tree eight fathom deep,
" an exercise in Vim loops.
let parent=1
let local_vimrc = ".vim.custom"
let local_tags = "tags"
while parent <= 8
	if filereadable(local_vimrc)
		"echomsg 'sourcing ' . local_vimrc
		exe ":so " . local_vimrc
	endif
	let local_vimrc = "../". local_vimrc
	let local_tags = "../". local_tags
	exe ":set tags+=".local_tags
	let parent = parent+1
	" TODO: stop at the root on any system and also ~ on Unix.
endwhile
unlet parent local_vimrc

