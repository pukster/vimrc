" --------------------------
" Puk's .vimrc
" --------------------------
"
"
" Variable Settings
"
"Events

" autocmd VimLeavePre * call RecordTabNames()





"For syntax checking (syntastic)
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1

"Use par for formatting rather than vim's internal formatter
set formatprg=par\ r

" set statusline=%f%m%r%h%w[%n]\ %{SyntasticStatuslineFlag()}\ [F=%{&ff}][T=%Y]\ %=[LINE=%l][%p%%]

"Disable mouse support so clicking the mouse won't move the screen
set mouse=

" With a map leader it's possible to do extra key combinations
" like <leader>ww saves the current file
let mapleader = ","
let g:mapleader = ","

"Turn on syntax (I guess)
syntax on

" Needed for Syntax Highlighting and stuff
" filetype on
filetype plugin indent on

"Turn on omnicompletion (make sure "file type plugin on")
set ofu=syntaxcomplete#Complete

syntax enable
set grepprg=grep\ -nH\ $*

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

"Restore cursor position
function! ResCur()
   if line("'\"") <= line("$")
      normal! g`"
      return 1
   endif
endfunction

augroup resCur
   autocmd!
   autocmd BufWinEnter * call ResCur()
augroup END




"scrollbinding sometimes acts squirely
set scrollopt=ver,hor







" Window

"Set command height to 2 so to avoid the "Press ENTER or type command" of doom
set cmdheight=2










" KEY MAPPINGS
nnoremap <C-j> :tabp<CR>
nnoremap <C-k> :tabn<CR>

" Fast saving
nnoremap <leader>w :w!<cr>

"Clear the search buffer by pressing ,/
nnoremap <silent> ,/ :nohlsearch<CR>

" Fast editing of the .vimrc
noremap <leader>e :e! ~/.vimrc<cr>
noremap <leader>g :e! ~/.gvimrc<cr>

" save and load sessions (with additional information)
"Record tab names as tab variables ('t:var') are not saved to sessions
"Remember vim can only save strings or numbers, not lists
function RecordTabInfo()
   let g:puksTabNames = ''
   let g:puksTabCDs = ''

   "Record original tab page so as to be able to return to it
   let l:originalPage = tabpagenr()

   "Tokenize it so it has the following form (without spaces)
   "Label1 JJ Label2 JJ Label3 JJ Label4
   tabfirst
   for i in range(1, tabpagenr('$'))
      if exists('t:tab_name')
         let g:puksTabNames = g:puksTabNames . t:tab_name  . 'JJ'
      else
         let g:puksTabNames = g:puksTabNames . 'JJ'
      endif
      let g:puksTabCDs = g:puksTabCDs . getcwd() . 'JJ'
      tabnext
   endfor

   "return to original position but remember that vimscript is the worst
   "scripting language in the history of ever. You can't issue a common
   "sense statement like
   "tabnext g:originalPage
   "instead you have to bust your chops concatenating it together then
   "evaling it.
   "Side note: As if this wasn't ass backwards enough, tabnext and tabNext
   "do completely different things. I understand it's keeping with vim's
   "nature of using capitals to do the opposite action, but having two
   "near complementary functions be called by two near identical commands
   "is pure evil!
   execute 'tabnext ' . l:originalPage
endfunction

function! MakeFullSession()
   call RecordTabInfo()
   mksession! ~/.vim/sessions/Session.vim
   execute "silent !mksession.py '" . g:puksTabNames . "' '" . g:puksTabCDs . "'"
endfunction

function! LoadFullSession()
   "ALWAYS ALWAYS ALWAYS switch to home folder because Vim naively records
   "relative paths.
   "Also, do not do 'lcd' as I have no idea the extent of Vim's stupidity.
   "As amazing as it is as an editor, it is equally as naive as a language.
   cd /home/peyman
   source ~/.vim/sessions/Session.vim
endfunction

nnoremap <leader>mks :call MakeFullSession()<CR>
nnoremap <leader>lks :call LoadFullSession()<CR>

" instead of pressing gcc hold ctrl and press c as many times as you like
noremap <C-c> gccj

" toggle word wrap
nnoremap <leader>rr :set nowrap! <CR>

" Reload the file
nnoremap <leader>rl :edit <CR>







" For commenting and Beautifying
function! GenerateJSComment()
   let l    = line('.')
   let i    = indent(l)
   let pre  = repeat(' ',i)
   let text = getline(l)
   let params   = matchstr(text,'([^)]*)')
   let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
   let start = stridx(text, "function ") + 9
   let fnName = matchstr(text, '[a-z,A-Z,_,$]\+', start)
   echomsg params
   let vars = []
   let vars += [pre.'** @method '.fnName]
   let m    = ' '
   let ml = matchlist(params,paramPat)
   while ml!=[]
      let [_,var;rest]= ml
      let vars += [pre.'** @param '.var]
      let ml = matchlist(rest,paramPat,0)
   endwhile
   let comment = [pre.'/**',pre.'** '] + vars + [pre.'**/']
   call append(l-1,comment)
   call cursor(l+1,i+3)
endfunction

function! GeneratePYComment()
   let l    = line('.')
   let i    = indent(l)
   let pre  = repeat(' ',i)
   let text = getline(l)
   let params   = matchstr(text,'([^)]*)')
   let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
   let start = stridx(text, "def ") + 4
   let fnName = matchstr(text, '[a-z,A-Z,_]\+', start)
   echomsg params
   let vars = []
   let vars += [pre.'** @method '.fnName]
   let m    = ' '
   let ml = matchlist(params,paramPat)
   while ml!=[]
      let [_,var;rest]= ml
      let vars += [pre.'"" @param '.var]
      let ml = matchlist(rest,paramPat,0)
   endwhile
   let comment = [pre.'"""',pre.'"" '] + vars + [pre.'"""']
   call append(l-1,comment)
   call cursor(l+1,i+3)
endfunction

function! GenerateVIMComment()
   let l    = line('.')
   let i    = indent(l)
   let pre  = repeat(' ',i)
   let text = getline(l)
   let params   = matchstr(text,'([^)]*)')
   let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
   let start = stridx(text, "function") + 10
   let start = (start == -1) ? stridx(text, "functio") + 9 : start
   let start = (start == -1) ? stridx(text, "functi") + 8 : start
   let start = (start == -1) ? stridx(text, "funct") + 7 : start
   let start = (start == -1) ? stridx(text, "function") + 6 : start
   let start = (start == -1) ? stridx(text, "fun") + 5 : start
   let start = (start == -1) ? stridx(text, "fu") + 4 : start
   let fnName = matchstr(text, '[a-z,A-Z,_,$]\+', start)
   echomsg params
   let vars = []
   let vars += [pre.'"" @method '.fnName]
   let m    = ' '
   let ml = matchlist(params,paramPat)
   while ml!=[]
      let [_,var;rest]= ml
      let vars += [pre.'"" @param '.var]
      let ml = matchlist(rest,paramPat,0)
   endwhile
   let comment = [pre.'"""',pre.'"" '] + vars + [pre.'"""']
   call append(l-1,comment)
   call cursor(l+1,i+3)
endfunction

"""
"" 
"" @method GenerateComment
"""
function! GenerateComment()
   let fileName = expand("%:t")
   if fileName =~ '\.js' || fileName =~ '\.c' || fileName =~ '\.php'
      call GenerateJSComment()
   elseif fileName =~ '\.py'
      call GeneratePYComment()
   elseif fileName =~ '\.vim' || &filetype == 'vim'
      call GenerateVIMComment()
   endif
endfunction

nnoremap <leader>cjs :call GenerateJSComment()<CR>
nnoremap <leader>cpy :call GeneratePYComment()<CR>
nnoremap <leader>cvim :call GenerateVIMComment()<CR>
nnoremap <leader>cc :call GenerateComment()<CR>

"Use <leader>c to toggle as g~ is hard to reach
"Removed as <leader>ciw and such will not work
" nnoremap <leader>c gU 

"Swap 0 and ^ as you seldom go to far beginning of line, and ^ is hard to
"reach
nnoremap 0 ^
nnoremap ^ 0

"Don't initially llow wrapping
set wrap!

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" toggle tag list on/off
nnoremap <leader>lt :TlistToggle<CR>

"shortcuts so we don't constantly have to type Tabularize
inoremap <leader>al Tabularize 
vnoremap <leader>al :Tabularize 
inoremap <leader>cal Tabularize /\/\/<CR>
vnoremap <leader>cal :Tabularize /\/\/<CR>
inoremap <leader>mal Tabularize /^\s*\w*/l2<CR>
vnoremap <leader>mal :Tabularize /^\s*\w*/l2<CR>

"pad spaces around brackets
nnoremap <leader>) f)i <Esc>F(a <Esc>
nnoremap <leader>( f)i <Esc>F(i <Esc>f(a <Esc>
nnoremap <leader>] f]i <Esc>F[a <Esc>
nnoremap <leader>[ f]i <Esc>F[i <Esc>f[a <Esc>
nnoremap <leader>= f=i <Esc>f=a <Esc>
nnoremap <leader>* f*i <Esc>f*a <Esc>
nnoremap <leader>? f/i <Esc>f/a <Esc>
nnoremap <leader>+ f+i <Esc>f+a <Esc>
nnoremap <leader>- f-i <Esc>f-a <Esc>

nnoremap <leader>fg :call PaddOut()<CR> 

function! PaddOut ()
   %s/\(\w\)\[/\1\ [/ge
   %s/\(\w\)\]/\1\ ]/ge
   %s/\]\(\w\)/]\ \1/ge
   %s/\[\(\w\)/[\ \1/ge
   %s/]]]]]/]\ ]\ ]\ ]\ ]/ge
   %s/]]]]/]\ ]\ ]\ ]/ge
   %s/]]]/]\ ]\ ]/ge
   %s/]]/]\ ]/ge
   %s/\(\w\)(/\1\ (/ge
   %s/\(\w\))/\1\ )/ge
   %s/)\(\w\)/)\ \1/ge
   %s/(\(\w\)/(\ \1/ge
   %s/(-/(\ -/ge
   %s/(+/(\ +/ge
   %s/)))))/)\ )\ )\ )\ )/ge
   %s/))))/)\ )\ )\ )/ge
   %s/)))/)\ )\ )/ge
   %s/))/)\ )/ge
endfunction

"Latex Suite
"This specifies what I want folded. I have included the defaults as well as
"some of my own as well
" let g:Tex_FoldedSections=',test'
" let g:Tex_FoldedCommands=',lstset'
" let g:Tex_FoldedEnvironments=',itemize'
" let g:Tex_FoldedMiscl=',comments'

"These two lines display the file name at the bottom
set modeline
set ls=2

"Default for checking marks is 4 seconds, make it faster
set updatetime=100

"Persistent Undo
set undodir=~/.vim/undodir
set undofile
set undolevels=10000    "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"Use GUndo to better view undo tree
"http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

"Keep undo history when switching buffers
set hidden

"Don't use vi-compatibility mode
set nocompatible

"Indent Guide
autocmd VimEnter * :IndentGuidesEnable
" let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
if ! has("gui_running")
   let g:indent_guides_auto_colors = 0
   " autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2d2d2d ctermbg=black
   " autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#272727 ctermbg=darkgrey
   autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=236
   autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=240
endif

"Disable swap files
set noswapfile

"Insert single characters from normal mode
nnoremap gi i_<Esc>r
nnoremap ga a_<Esc>r

"Use the smart version of backspace (jumps over tabs apparently instead of
"spaces
set backspace=2

"Line Numbers
set number

"Makes unnamed clipboard accesible to X window
set clipboard=unnamedplus

"I don't want to see the tab names
set showtabline=1

" Shortcuts for tabs
" nnoremap <leader>tn :tabnext<CR>
" nnoremap <leader>tp :tabp<CR>
nnoremap <leader>tn :tab split<CR>
nnoremap <leader>tf :tabfirst<CR>
nnoremap <leader>tl :tablast<CR>
nnoremap <leader>te :tabnew ~/.vimrc<CR>
nnoremap <leader>tg :tabnew ~/.gvimrc<CR>
nnoremap <leader>tx x:tabclose<CR>
nnoremap <leader>1t 1gt
nnoremap <leader>2t 2gt
nnoremap <leader>3t 3gt
nnoremap <leader>4t 4gt
nnoremap <leader>5t 5gt
nnoremap <leader>6t 6gt
nnoremap <leader>7t 7gt
nnoremap <leader>8t 8gt
nnoremap <leader>9t 9gt
nnoremap <leader>9t 9gt
nnoremap <leader>tL :TName ""<Left>

" The first one toggles all indicators off: 
nmap <Leader>tv :call TabLineSet_verbose_toggle()<CR> 

" The second rotates through a list of option settings which configurable/extensible via g:TabLineSet_verbose_sets.  See below. 
nmap <Leader>tr :call TabLineSet_verbose_rotate()<CR> 

"Use spaces instead of tabs
set expandtab

"Number of spaces to use for each step of (auto)indent.
set shiftwidth=3
set tabstop=3
set softtabstop=3
set expandtab

"This shows what you are typing as a command
set showcmd

"Not too sure what this does
set smarttab

"Indent every time you press enter
set autoindent
set smartindent

"Use C style indent instead (note this causes problems with non C code)
" set cindent

"Cursor Always in middle
"NOTE This causes problems with word wrap of long lines as they are not
"displayed correctly
set scrolloff=999

"Always display row/column info
set ruler

"Set a red ruler at some point for comment blocks
"But only for php and js files as they make heavy use of comments
" au BufNewFile,BufRead *.php,*.js set cc=80

"Sometimes php code will by default use HTML commenting if there is
"embedded HTML code, therefore, set it for good measure
au Bufenter *.php set comments=sl:/*,mb:*,elx:*/

set tags=tags;

"make word wrap wrap words, not character
set formatoptions+=l
"automatically add comment leader after hitting enter
set formatoptions+=ro

set lbr

"Use ... when word wrapping
set breakindent
set showbreak=...
set linebreak
" set foldmethod=indent
" set foldcolumn=4

"enable status line always
set laststatus=2

"
" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%f%m%r%h%w[%n]\ %{SyntasticStatuslineFlag()}\ [F=%{&ff}][T=%Y]\ %=[LINE=%l\/%L][%p%%]

function! InsertStatuslineColor(mode)
   if a:mode == 'i'
      hi StatusLine term=reverse ctermbg=9 guibg=SteelBlue3
   elseif a:mode == 'r'
      hi StatusLine term=reverse ctermbg=22 guibg=SteelBlue3
   else
      hi StatusLine term=reverse ctermbg=6 guibg=SteelBlue3
   endif
endfunction

"set it up to change the status line based on mode
if version >= 700
   au InsertEnter * call InsertStatuslineColor(v:insertmode)
   au InsertLeave * hi StatusLine term=reverse ctermbg=4 guibg=DarkGreen
endif

autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%'     "Compile tex files with :make

"start searching as you type
set incsearch

"Map jj to escape
imap jj <Esc>

"ap ,f to CTRL+O Shift X
inoremap ,f <C-O><S-X>

"Toggle Nerd Tree on/off
noremap <F2> :NERDTreeToggle<CR>

"Show hidden files in Nerd tree
let NERDTreeShowHidden=1

" get rid of that stupid Latex-Suite fold
" let g:Tex_AutoFolding = 0

"Highlight search strings
set hlsearch

" Set off the other paren
highlight MatchParen ctermbg=4

"Ignore case when searching
set ignorecase

"But remember case when capitals used
set smartcase

" replace gU with gu as it is far more common to capitalize than to make
" lowercase
nnoremap gU gu
nnoremap gu gU
vnoremap gU gu
vnoremap gu gU

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
" Is irritating and I hardly ever use it
" set wildmenu
" set wildmode=list:longest,full

"Remap arrow keys to resize windows
" nnoremap  <Right> <c-w>>
" nnoremap  <Left> <c-w><
" nnoremap  <Up> <c-w>+
" nnoremap  <Down> <c-w>-

"Show matching bracets when text indicator is over them
set showmatch

"How many tenths of a second to blink
set guicursor+=n-v-c:blinkwait700-blinkon700-blinkoff700

"Change color of cursor in the terminal 
if &term =~ "xterm\\|rxvt"
   " use an orange cursor in insert mode
   let &t_SI = "\<Esc>]12;orange\x7"
   " use a red cursor otherwise
   let &t_EI = "\<Esc>]12;orange\x7"
   silent !echo -ne "\033]12;orange\007"
   " reset cursor when vim exits
   autocmd VimLeave * silent !echo -ne "\033]112\007"
   " use \003]12;gray\007 for gnome-terminal
endif

" Swap ; and :  Convenient.
nnoremap; :
nnoremap : ;
vnoremap; :
vnoremap : ;

"These are used in visual mode for alligning delimeters
" vnoremap <leader>t/ :Align \/\/<CR>
" vnoremap <leader>t# :Align #<CR>
" now that ; and : have been swapped, map q: to q;
nnoremap q; q:

" Create Blank Newlines and stay in Normal mode
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Create Blank Newlines and paste stay in Normal mode
nnoremap <silent> zp o<C-r>+<Esc>
nnoremap <silent> zP O<C-r>+<Esc>

"Highlight current line
set cul

" highlight ExtraWhitespace ctermbg=1 guibg=red
" highlight ExtraWhitespace term=reverse ctermfg=15 ctermbg=1 guifg=#ffffff guibg=#800000
" au ColorScheme * highlight ExtraWhitespace guibg=red ctermbg=1
" au BufEnter * match ExtraWhitespace /\s\+$/
" au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" au InsertLeave * match ExtraWhiteSpace /\s\+$/

"Make cursor move as expected with wrapped lines:
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"Map Shift+ J to previous buffer
noremap <S-J> :bp<CR>

"Map Shift + K to next buffer
noremap <S-k> :bn<CR>

"map leader j to Join since <S-J> overwrites it
nnoremap <leader>j J
"map leader J to unjoin 
nnoremap <leader>J i<CR><ESC>

"Map <leader>to[ggle] to toggle word
nnoremap <leader>to :ToggleWord<CR>

" Map <leader>fw to open Four Window splits
nnoremap <leader>fw :split<cr>:vsplit<cr><c-w>j:vsplit<cr>
"enable 256 color
set t_Co=256

" SyncTex Table of Contents Vsplit window width
" default is 30, but make it slightly wider
" let g:LatexBox_split_width = 45

" Always use pdflatex with Latex Box (latexmk)
let g:LatexBox_latexmk_options = "-pdf"

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"Do not want spell checking in my commented blocks
let g:tex_comment_nospell= 1

if &t_Co == 256
   " colorscheme xoria256
   colorscheme jellybeans
else
   colorscheme peachpuff
endif

" JellyBeans does not work very well with highlights, set this manually
highlight Search term=reverse ctermfg=0 ctermbg=154 guifg=#f0a0c0 guibg=#302028

"turn on spell check for tex files
au BufNewFile,BufRead *.tex setlocal spell spelllang=en_gb

"Just want a red line under incorrect words
au BufNewFile,BufRead *.tex highlight SpellBad term=reverse cterm=underline ctermfg=1 ctermbg=232 gui=undercurl guisp=Red
au BufNewFile,BufRead *.tex highlight SpellCap term=reverse cterm=underline ctermfg=6 ctermbg=232 gui=undercurl guisp=Red
au BufNewFile,BufRead *.tex highlight SpellRare term=reverse cterm=underline ctermfg=46 ctermbg=232 gui=undercurl guisp=Red
au BufNewFile,BufRead *.tex highlight SpellLocal term=reverse cterm=underline ctermfg=160 ctermbg=232 gui=undercurl guisp=Red

"toggle spelling on/off
function ToggleSpell() 
   setlocal spell!
   highlight SpellBad term=reverse cterm=underline ctermfg=1 ctermbg=232 gui=undercurl guisp=Red
   highlight SpellCap term=reverse cterm=underline ctermfg=6 ctermbg=232 gui=undercurl guisp=Red
   highlight SpellRare term=reverse cterm=underline ctermfg=46 ctermbg=232 gui=undercurl guisp=Red
   highlight SpellLocal term=reverse cterm=underline ctermfg=160 ctermbg=232 gui=undercurl guisp=Red
endfunction 

nnoremap <leader>sp :call ToggleSpell() <CR>

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
   au!
   autocmd BufReadPost *
            \ if expand("<afile>:p:h") !=? $TEMP |
            \   if line("'\"") > 1 && line("'\"") <= line("$") |
            \     let JumpCursorOnEdit_foo = line("'\"") |
            \     let b:doopenfold = 1 |
            \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
            \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
            \        let b:doopenfold = 2 |
            \     endif |
            \     exe JumpCursorOnEdit_foo |
            \   endif |
            \ endif
   " Need to postpone using "zv" until after reading the modelines.
   autocmd BufWinEnter *
            \ if exists("b:doopenfold") |
            \   exe "normal zv" |
            \   if(b:doopenfold > 1) |
            \       exe  "+".1 |
            \   endif |
            \   unlet b:doopenfold |
            \ endif
augroup END

call pathogen#infect()

"For jsbeautify
noremap <F9> :call g:Jsbeautify()<CR>

"Check PHP Syntax
:autocmd FileType php noremap <C-L> :!php -l %<CR>

"Beautify PHP Syntax In 4 steps
"1) reduce all multiple blank lines to a single blank line
"2) change all blank lines to something unique like 'if(true)echo('it puts the lotion on the skin');'
"3) apply beautifier
"4) change unique quote back to new line
function! ParsePHP()
   :exe 'g/^\_$\n\_^$/d'
   :%s/^[\ \t]*\n/$x = 'It puts the lotion on the skin';\r/ge
   :exe '%!php_beautifier --filters "ArrayNested() IndentStyles(style=k&r)"'
   A
   :%s/$x = 'It puts the lotion on the skin';//ge
endfunction

noremap <F8> :call ParsePHP()<CR>

" A function to truncate multiple empty lines to one line with the     "
" same number of spaces as the parent. I have also included other      "
" beautifier techniques like padding out brackets and such             "
function! AddPrettyIndents()
   :%s/\s\+$//e
   :%s/\n\{3,}/\r\r/e
   :g/^$/s//\=matchstr(getline(line('.')-1), '^\s*')
   :%s/^[ ]\+\n\([^ ]\)/\r\1/ge
endfunction

"<leader>pp to add indents
nnoremap <leader>pp mk :execute "silent :call AddPrettyIndents()"<CR>`k

"<leader>ts to convert tabs to spaces
nnoremap <leader>tt :%s/\t/\ \ \ /g<cr>

"For syntax checking (syntastic)
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes=['html']
let g:syntastic_enable_signs=1

function Setsign() 
   let setit = ":sign place 1 line=" . line(".") 
   exe setit . " name=line file=" . expand("%:p") 
endfunction 

function Hilite_line(pat) 
   sign define line linehl=Search 

   " trick to hilite first line 
   " otherwise it is skipped in the while loop 
   normal G 
   if search(a:pat, "w") > 0 
      call Setsign() 
   endif 
   while search(a:pat, "W") > 0 
      call Setsign() 
   endwhile 
endfunction

"adjust highlight color
if v:version > 700
   set cursorline
   hi CursorLine ctermbg=235 guibg=#0F0F0F
endif

" Initially color it Dark Green
hi StatusLine term=reverse ctermbg=4 guibg=DarkGreen
hi StatusLineNC term=reverse ctermbg=7 ctermfg=0 guibg=DarkGreen
hi VertSplit term=reverse ctermbg=7 ctermfg=7 guibg=DarkGreen

" Set color for tabs at bottom so as to not get overwritten
hi TabLine cterm=bold ctermbg=44 ctermfg=233
hi TabLineSel cterm=bold ctermbg=231 ctermfg=233
hi TabLineFill ctermbg=233


"get information on the Syntax of the under cursor word
nnoremap <leader>a :call SyntaxAttr();<CR>
autocmd FuncUndefined * exe 'runtime autoload/' . expand('<afile>') . '.vim'

function! HiEmbeddedHTML()
   let l:id  = synID(line("."), col("."), 1)
   let l:attr = synIDattr(l:id, 'name')  
   let l:prefix = strpart(l:attr,0,4)
   if l:prefix == "html"
      echo "yes"
   else
      echo "no"
   endif
endfunction

nnoremap <leader>dd :call HiEmbeddedHTML()<CR>

let php_sql_query = 1
