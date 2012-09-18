let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <Up> gk
inoremap <Down> gj
noremap  gccj
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap <NL> :tabp
nnoremap  :tabn
noremap  :!php -l %
snoremap  b<BS>
nnoremap <silent>  :TComment
nnoremap <silent> r :TCommentRight
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
snoremap <silent> ,__ :TComment
nnoremap <silent> ,__ :TComment
snoremap <silent> ,_r :TCommentRight
nnoremap <silent> ,_r :TCommentRight
noremap ,_s :TCommentAs =&ft_
noremap ,_n :TCommentAs =&ft 
noremap ,_a :TCommentAs 
noremap ,_b :TCommentBlock
xnoremap <silent> ,_r :TCommentRight
onoremap <silent> ,_r :TCommentRight
xnoremap <silent> ,_i :TCommentInline
noremap ,_  :TComment 
noremap <silent> ,_p vip:TComment
xnoremap <silent> ,__ :TCommentMaybeInline
onoremap <silent> ,__ :TComment
nnoremap <silent> ,ff :call g:Jsbeautify()
nmap ,ig :IndentGuidesToggle
nnoremap ,tt :%s/\t/\ \ \ /g
nnoremap <silent> ,pp :call AddPrettyIndents()
nnoremap ,sp :call ToggleSpell() 
nmap ,tr :call TabLineSet_verbose_rotate() 
nmap ,tv :call TabLineSet_verbose_toggle() 
nnoremap ,tL :TName ""<Left>
nnoremap ,9t 9gt
nnoremap ,8t 8gt
nnoremap ,7t 7gt
nnoremap ,6t 6gt
nnoremap ,5t 5gt
nnoremap ,4t 4gt
nnoremap ,3t 3gt
nnoremap ,2t 2gt
nnoremap ,1t 1gt
nnoremap ,tx x:tabclose
nnoremap ,tg :tabnew ~/.gvimrc
nnoremap ,te :tabnew ~/.vimrc
nnoremap ,tl :tablast
nnoremap ,tf :tabfirst
nnoremap ,tn :tab split
nnoremap ,lt :TlistToggle
nnoremap ,cc :call GenerateComment()
nnoremap ,cvim :call GenerateVIMComment()
nnoremap ,cpy :call GeneratePYComment()
nnoremap ,cjs :call GenerateJSComment()
noremap ,rr :set nowrap! 
nnoremap ,lks :call LoadFullSession()
nnoremap ,mks :call MakeFullSession()
noremap ,g :e! ~/.gvimrc
noremap ,e :e! ~/.vimrc
nnoremap <silent> ,/ :nohlsearch
nnoremap ,w :w!
noremap / :call SearchCompleteStart()/
nnoremap : ;
nnoremap ; :
noremap J :bp
noremap K :bn
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
xnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
xnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
nnoremap ga a_r
nnoremap gi i_r
nnoremap q; q:
nnoremap <silent> zk O
nnoremap <silent> zj o
vnoremap <F8> :call ParsePHP()
nnoremap <silent> <F10> :call conque_term#send_file()
nnoremap <F8> :call conque_term#set_mappings("toggle")
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <F11> :call conque_term#exec_file()
onoremap <F8> :call ParsePHP()
noremap <F9> :call g:Jsbeautify()
noremap <F2> :NERDTreeToggle
nnoremap <F5> :GundoToggle
imap 	 <Plug>SuperTabForward
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
inoremap ,f X
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=2
set clipboard=unnamedplus
set cmdheight=2
set errorformat=%A%f(%l):\ %m,%-Z%p^,%-C%.%#,%-G
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=l
set formatprg=par
set grepprg=grep\ -nH\ $*
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175,n-v-c:blinkwait700-blinkon700-blinkoff700
set guitablabel=%{TabGuiCaptionLabel()}
set guitabtooltip=%!TabLineSet_guitabtooltip()
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set makeprg=jsl\ -nologo\ -nofilelisting\ -nosummary\ $*\ -process\ $*\ \"%\"
set omnifunc=syntaxcomplete#Complete
set ruler
set runtimepath=~/.vim,~/.vim/bundle/gundo,~/.vim/bundle/jsbeautify,~/.vim/bundle/syntastic,~/.vim/bundle/vim-indent-guides,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim73,/usr/local/share/vim/vimfiles/after,~/.vim/after
set scrolloff=999
set shiftwidth=3
set showbreak=...
set showcmd
set showmatch
set sidescroll=1
set smartcase
set smartindent
set smarttab
set softtabstop=3
set statusline=%f%m%r%h%w[%n]\ %{SyntasticStatuslineFlag()}\ [F=%{&ff}][T=%Y]\ %=[LINE=%l\/%L][%p%%]
set noswapfile
set tabline=%!TabCaptionLineFunction()
set tabstop=3
set tags=tags;
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
set updatetime=100
set wildignore=*.pyc
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +70 Documents/pa06r-thesis/Thesis/Appendix_Biological_Neurons.tex
badd +115 Documents/pa06r-thesis/Thesis/Appendix_Hippocampal_Model.tex
badd +1 Documents/pa06r-thesis/Thesis/Appendix_Hippocampus.tex
badd +1 Documents/pa06r-thesis/Thesis/Appendix_Integrated_Neural_Network_Development_Environment.tex
badd +1 Documents/pa06r-thesis/Thesis/Appendix_Neural_Network_Simulator.tex
badd +1 Documents/pa06r-thesis/Thesis/Appendix_Synaptic_Plasticity.tex
badd +1 Documents/pa06r-thesis/Thesis/Biological_neurons_and_synaptic_plasticity.tex
badd +1 Documents/pa06r-thesis/Thesis/Conclusions.tex
badd +1 Documents/pa06r-thesis/Thesis/Discussion.tex
badd +1 Documents/pa06r-thesis/Thesis/Future_Work.tex
badd +1 Documents/pa06r-thesis/Thesis/Hippocampal_Model.tex
badd +1 Documents/pa06r-thesis/Thesis/Hippocampal_Model_Implementation.tex
badd +1 Documents/pa06r-thesis/Thesis/Hippocampus.tex
badd +1 Documents/pa06r-thesis/Thesis/Integrated_Neural_Network_Development_Environment.tex
badd +1 Documents/pa06r-thesis/Thesis/Introduction.tex
badd +686 Documents/pa06r-thesis/Thesis/Results.tex
badd +1 Documents/pa06r-thesis/Thesis/Synaptic_Plasticity.tex
badd +1 Documents/pa06r-thesis/Thesis/Taranaki_And_Spinnaker.tex
badd +391 Documents/pa06r-thesis/Thesis/Thesis.tex
badd +1 Documents/pa06r-thesis/Thesis/figure_template.tex
badd +1 Documents/pa06r-thesis/Thesis/grfguide.tex
badd +24 Documents/neuro-sim/gplot/total_grid_pkg.py
badd +48 Documents/neuro-sim/gplot/.skewed_grid_3D_data.cfg
badd +28 Documents/neuro-sim/gplot/.skewed_grid_2D_data.cfg
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box0_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box10_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box11_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box12_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box13_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box14_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box15_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box16_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box17_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box18_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box19_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box1_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box20_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box21_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box22_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box23_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box24_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box25_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box26_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box27_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box28_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box29_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box2_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box30_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box31_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box32_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box33_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box34_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box35_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box36_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box37_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box38_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box39_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box3_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box40_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box41_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box42_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box43_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box44_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box45_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box46_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box47_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box48_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box49_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box4_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box50_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box51_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box52_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box53_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box54_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box55_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box56_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box57_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box58_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box59_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box5_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box60_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box6_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box7_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box8_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Box9_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle0_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle10_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle11_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle12_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle13_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle14_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle15_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle16_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle17_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle18_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle19_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle1_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle20_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle21_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle22_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle23_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle24_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle25_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle26_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle27_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle28_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle29_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle2_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle30_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle31_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle32_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle33_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle34_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle35_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle36_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle37_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle38_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle39_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle3_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle40_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle41_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle42_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle43_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle44_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle45_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle46_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle47_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle48_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle49_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle4_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle50_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle51_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle52_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle53_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle54_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle55_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle56_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle57_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle58_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle59_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle5_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle60_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle6_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle7_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle8_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Circle9_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Clone.Box_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Clone.Circle_S.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label0_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label10_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label11_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label12_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label13_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label14_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label15_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label16_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label17_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label18_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label19_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label1_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label20_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label21_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label22_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label23_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label24_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label25_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label26_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label27_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label28_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label29_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label2_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label30_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label31_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label32_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label33_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label34_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label35_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label36_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label37_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label38_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label39_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label3_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label40_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label41_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label42_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label43_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label44_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label45_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label46_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label47_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label48_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label49_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label4_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label50_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label51_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label52_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label53_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label54_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label55_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label56_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label57_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label58_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label59_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label5_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label60_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label6_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label7_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label8_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category.Label9_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/CategoryLabel_T.js
badd +1 Documents/neuro-sim/website/3.0/Category/Category_V.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/Ship.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/SpaceRock.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/modernizr/modernizr-1.7.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/lib/easel.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Bitmap.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/BitmapSequence.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Container.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/DisplayObject.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Graphics.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Shadow.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Shape.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/SpriteSheet.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Stage.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Text.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/events/MouseEvent.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/BoxBlurFilter.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/ColorFilter.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/ColorMatrixFilter.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/Filter.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Matrix2D.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Point.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Rectangle.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/SpriteSheetUtils.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/Ticker.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/UID.js
badd +1 Documents/neuro-sim/website/3.0/History/History.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/History/History.Clone.Circle_S.js
badd +1 Documents/neuro-sim/website/3.0/History/HistoryNode.js
badd +1 Documents/neuro-sim/website/3.0/History/History_V.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Button_C.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Button_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Clone.Border_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Clone.Entry_D.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.MiniButtonA_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.MiniButtonB_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Password.Border_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.Password.Entry_D.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.RetypePassword.Border_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.RetypePassword.Entry_D.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.UserName.Border_S.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn.UserName.Entry_D.js
badd +1 Documents/neuro-sim/website/3.0/Login/LogIn_V.js
badd +1 Documents/neuro-sim/website/3.0/Login/log_in_view.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton1_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton1_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton2_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton2_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton3_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton3_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton4_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton4_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton5_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton5_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton6_CT.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton6_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Circle_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.TriangleAnim_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Triangle_C.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Triangle_S.js
badd +1 Documents/neuro-sim/website/3.0/MainMenu/MainMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BLMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/BRMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/Menu.Clone.MenuItem_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/Menu.Clone.MenuItem_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TLMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.Label_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_B.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_S.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_T.js
badd +1 Documents/neuro-sim/website/3.0/Menu/TRMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Portal/Portal.Bg_S.js
badd +1 Documents/neuro-sim/website/3.0/Portal/Portal.Clone.Box_S.js
badd +1 Documents/neuro-sim/website/3.0/Portal/Portal_V.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_B.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_S.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_T.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_B.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_S.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_T.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_B.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_S.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_T.js
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu_V.js
badd +1 Documents/neuro-sim/website/3.0/Side/Clone.Sparkles_B.js
badd +1 Documents/neuro-sim/website/3.0/Side/LSide_S.js
badd +1 Documents/neuro-sim/website/3.0/Side/LSide_V.js
badd +1 Documents/neuro-sim/website/3.0/Side/RSide_S.js
badd +1 Documents/neuro-sim/website/3.0/Side/RSide_V.js
badd +1 Documents/neuro-sim/website/3.0/Stage/Stage.js
badd +1 Documents/neuro-sim/website/3.0/main/bounding_box.js
badd +443 Documents/neuro-sim/website/3.0/main/easel.js
badd +1 Documents/neuro-sim/website/3.0/main/global_variables.js
badd +70 Documents/neuro-sim/website/3.0/main/initializations.js
badd +1 Documents/neuro-sim/website/3.0/main/keyboard.js
badd +1 Documents/neuro-sim/website/3.0/main/mouse.js
badd +1 Documents/neuro-sim/website/3.0/main/text.js
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/HelloWorld.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/MatrixTest.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/barGraph.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/bitmapSequences.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/cache.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/doubleClickTest.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/dragAndDrop.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/extractFrame.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/filters.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/game.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/globalToLocal1.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/globalToLocal2.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/graphicsTest.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/graphicsTestTiny.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/icons.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/localToGlobal.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/modernizr/modernizr_example.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/sparkles.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/sparklesFade.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/spriteSheetFlip.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/textTest.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/textwrapping.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/updateCache.html
badd +1 Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/vday.html
badd +1 Documents/neuro-sim/website/3.0/RClickMenu/ModuleEditor_TA.html
badd +1 Documents/neuro-sim/website/3.0/database/delete.html
badd +1 Documents/neuro-sim/website/3.0/html/test.html
badd +1 Documents/neuro-sim/website/3.0/html/test2.html
badd +2 Documents/neuro-sim/website/3.0/index.html
badd +1 Documents/neuro-sim/website/3.0/test.html
badd +1 Documents/neuro-sim/website/3.0/testPHPLoad.html
badd +1 Documents/neuro-sim/website/3.0/Portal/Portal.Bg_S.php
badd +1 Documents/neuro-sim/website/3.0/client.php
badd +73 Documents/neuro-sim/website/3.0/database/create_database.php
badd +1 Documents/neuro-sim/website/3.0/database/delete_database.php
badd +1 Documents/neuro-sim/website/3.0/database/echoRandomImagePath.php
badd +1 Documents/neuro-sim/website/3.0/database/fileUpload.php
badd +1 Documents/neuro-sim/website/3.0/database/getImage.php
badd +1 Documents/neuro-sim/website/3.0/database/getPrimaryID.php
badd +1 Documents/neuro-sim/website/3.0/database/getRandomImage.php
badd +1 Documents/neuro-sim/website/3.0/database/getRandomImagePath.php
badd +1 Documents/neuro-sim/website/3.0/database/getValueFromDB.php
badd +1 Documents/neuro-sim/website/3.0/database/globalVariables.php
badd +1 Documents/neuro-sim/website/3.0/database/login.php
badd +1 Documents/neuro-sim/website/3.0/database/module.preLoad.php
badd +1 Documents/neuro-sim/website/3.0/database/register.php
badd +1 Documents/neuro-sim/website/3.0/database/reset_database.php
badd +1 Documents/neuro-sim/website/3.0/database/returnRandomImagePath.php
badd +1 Documents/neuro-sim/website/3.0/database/test.php
badd +1 Documents/neuro-sim/website/3.0/database/testGetImage.php
badd +1 Documents/neuro-sim/website/3.0/database/updateDatabase.php
badd +1 Documents/neuro-sim/website/3.0/database/upload_file.php
badd +1 Documents/neuro-sim/website/3.0/database/validateEmail.php
badd +1 Documents/neuro-sim/website/3.0/database/validatePassword.php
badd +1 Documents/neuro-sim/website/3.0/database/validateUserName.php
badd +1 Documents/neuro-sim/website/3.0/database/validate_email.php
badd +1 Documents/neuro-sim/website/3.0/html.load.php
badd +1 Documents/neuro-sim/website/3.0/module.require.php
badd +1 Documents/neuro-sim/website/3.0/server.php
badd +1 Documents/neuro-sim/website/3.0/database/addFromConsole.sh
badd +1 Documents/neuro-sim/website/3.0/database/testConsonle.sh
badd +1 Documents/neuro-sim/website/3.0/open.sh
badd +1 Documents/neuro-sim/website/3.0/system/createUser.sh
badd +1 Documents/neuro-sim/website/3.0/system/initializeSystem.sh
badd +1 Documents/neuro-sim/website/3.0/system/inotify.sh
badd +1 Documents/neuro-sim/website/3.0/system/inotify2.sh
badd +1 Documents/pa06r-thesis/Thesis/test.tex
badd +1 Documents/pa06r-thesis/Thesis/test2.tex
badd +1 Documents/pa06r-thesis/Thesis/test3.tex
badd +1 Documents/pa06r-thesis/Thesis/test_dot-dot2tex-fig1.tex
badd +1 Documents/pa06r-thesis/Thesis/test_dot.tex
badd +238 /etc/apache2/apache2.conf
badd +0 /etc/apache2/httpd.conf
badd +0 /etc/apache2/sites-available/default
badd +0 /etc/apache2/sites-available/default-ssl
badd +0 /etc/apache2/sites-available/www.god.portal.com
badd +0 /etc/apache2/sites-available/www.peyman.portal.com
badd +0 /etc/apache2/sites-available/www.player1.portal.com
badd +0 /etc/apache2/sites-available/www.player2.portal.com
badd +0 /etc/apache2/sites-available/www.player3.portal.com
badd +0 /etc/apache2/sites-available/www.player4.portal.com
badd +0 /etc/apache2/sites-available/www.portal.com
badd +0 /etc/apache2/sites-available/www.skeleton.portal.com
args Documents/pa06r-thesis/Thesis/Appendix_Biological_Neurons.tex Documents/pa06r-thesis/Thesis/Appendix_Hippocampal_Model.tex /etc/apache2/sites-available/default /etc/apache2/sites-available/default-ssl /etc/apache2/sites-available/www.god.portal.com /etc/apache2/sites-available/www.peyman.portal.com /etc/apache2/sites-available/www.player1.portal.com /etc/apache2/sites-available/www.player2.portal.com /etc/apache2/sites-available/www.player3.portal.com /etc/apache2/sites-available/www.player4.portal.com /etc/apache2/sites-available/www.portal.com /etc/apache2/sites-available/www.skeleton.portal.com /etc/apache2/httpd.conf /etc/apache2/apache2.conf Documents/neuro-sim/website/3.0/database/addFromConsole.sh Documents/neuro-sim/website/3.0/database/testConsonle.sh Documents/neuro-sim/website/3.0/open.sh Documents/neuro-sim/website/3.0/system/createUser.sh Documents/neuro-sim/website/3.0/system/initializeSystem.sh Documents/neuro-sim/website/3.0/system/inotify.sh Documents/neuro-sim/website/3.0/system/inotify2.sh Documents/neuro-sim/website/3.0/Portal/Portal.Bg_S.php Documents/neuro-sim/website/3.0/client.php Documents/neuro-sim/website/3.0/database/create_database.php Documents/neuro-sim/website/3.0/database/delete_database.php Documents/neuro-sim/website/3.0/database/echoRandomImagePath.php Documents/neuro-sim/website/3.0/database/fileUpload.php Documents/neuro-sim/website/3.0/database/getImage.php Documents/neuro-sim/website/3.0/database/getPrimaryID.php Documents/neuro-sim/website/3.0/database/getRandomImage.php Documents/neuro-sim/website/3.0/database/getRandomImagePath.php Documents/neuro-sim/website/3.0/database/getValueFromDB.php Documents/neuro-sim/website/3.0/database/globalVariables.php Documents/neuro-sim/website/3.0/database/login.php Documents/neuro-sim/website/3.0/database/module.preLoad.php Documents/neuro-sim/website/3.0/database/register.php Documents/neuro-sim/website/3.0/database/reset_database.php Documents/neuro-sim/website/3.0/database/returnRandomImagePath.php Documents/neuro-sim/website/3.0/database/test.php Documents/neuro-sim/website/3.0/database/testGetImage.php Documents/neuro-sim/website/3.0/database/updateDatabase.php Documents/neuro-sim/website/3.0/database/upload_file.php Documents/neuro-sim/website/3.0/database/validateEmail.php Documents/neuro-sim/website/3.0/database/validatePassword.php Documents/neuro-sim/website/3.0/database/validateUserName.php Documents/neuro-sim/website/3.0/database/validate_email.php Documents/neuro-sim/website/3.0/html.load.php Documents/neuro-sim/website/3.0/module.require.php Documents/neuro-sim/website/3.0/server.php Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/HelloWorld.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/MatrixTest.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/barGraph.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/bitmapSequences.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/cache.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/doubleClickTest.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/dragAndDrop.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/extractFrame.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/filters.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/game.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/globalToLocal1.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/globalToLocal2.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/graphicsTest.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/graphicsTestTiny.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/icons.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/localToGlobal.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/modernizr/modernizr_example.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/sparkles.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/sparklesFade.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/spriteSheetFlip.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/textTest.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/textwrapping.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/updateCache.html Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/vday.html Documents/neuro-sim/website/3.0/RClickMenu/ModuleEditor_TA.html Documents/neuro-sim/website/3.0/database/delete.html Documents/neuro-sim/website/3.0/html/test.html Documents/neuro-sim/website/3.0/html/test2.html Documents/neuro-sim/website/3.0/index.html Documents/neuro-sim/website/3.0/test.html Documents/neuro-sim/website/3.0/testPHPLoad.html Documents/neuro-sim/website/3.0/Category/Category.Bg_S.js Documents/neuro-sim/website/3.0/Category/Category.Box0_S.js Documents/neuro-sim/website/3.0/Category/Category.Box10_S.js Documents/neuro-sim/website/3.0/Category/Category.Box11_S.js Documents/neuro-sim/website/3.0/Category/Category.Box12_S.js Documents/neuro-sim/website/3.0/Category/Category.Box13_S.js Documents/neuro-sim/website/3.0/Category/Category.Box14_S.js Documents/neuro-sim/website/3.0/Category/Category.Box15_S.js Documents/neuro-sim/website/3.0/Category/Category.Box16_S.js Documents/neuro-sim/website/3.0/Category/Category.Box17_S.js Documents/neuro-sim/website/3.0/Category/Category.Box18_S.js Documents/neuro-sim/website/3.0/Category/Category.Box19_S.js Documents/neuro-sim/website/3.0/Category/Category.Box1_S.js Documents/neuro-sim/website/3.0/Category/Category.Box20_S.js Documents/neuro-sim/website/3.0/Category/Category.Box21_S.js Documents/neuro-sim/website/3.0/Category/Category.Box22_S.js Documents/neuro-sim/website/3.0/Category/Category.Box23_S.js Documents/neuro-sim/website/3.0/Category/Category.Box24_S.js Documents/neuro-sim/website/3.0/Category/Category.Box25_S.js Documents/neuro-sim/website/3.0/Category/Category.Box26_S.js Documents/neuro-sim/website/3.0/Category/Category.Box27_S.js Documents/neuro-sim/website/3.0/Category/Category.Box28_S.js Documents/neuro-sim/website/3.0/Category/Category.Box29_S.js Documents/neuro-sim/website/3.0/Category/Category.Box2_S.js Documents/neuro-sim/website/3.0/Category/Category.Box30_S.js Documents/neuro-sim/website/3.0/Category/Category.Box31_S.js Documents/neuro-sim/website/3.0/Category/Category.Box32_S.js Documents/neuro-sim/website/3.0/Category/Category.Box33_S.js Documents/neuro-sim/website/3.0/Category/Category.Box34_S.js Documents/neuro-sim/website/3.0/Category/Category.Box35_S.js Documents/neuro-sim/website/3.0/Category/Category.Box36_S.js Documents/neuro-sim/website/3.0/Category/Category.Box37_S.js Documents/neuro-sim/website/3.0/Category/Category.Box38_S.js Documents/neuro-sim/website/3.0/Category/Category.Box39_S.js Documents/neuro-sim/website/3.0/Category/Category.Box3_S.js Documents/neuro-sim/website/3.0/Category/Category.Box40_S.js Documents/neuro-sim/website/3.0/Category/Category.Box41_S.js Documents/neuro-sim/website/3.0/Category/Category.Box42_S.js Documents/neuro-sim/website/3.0/Category/Category.Box43_S.js Documents/neuro-sim/website/3.0/Category/Category.Box44_S.js Documents/neuro-sim/website/3.0/Category/Category.Box45_S.js Documents/neuro-sim/website/3.0/Category/Category.Box46_S.js Documents/neuro-sim/website/3.0/Category/Category.Box47_S.js Documents/neuro-sim/website/3.0/Category/Category.Box48_S.js Documents/neuro-sim/website/3.0/Category/Category.Box49_S.js Documents/neuro-sim/website/3.0/Category/Category.Box4_S.js Documents/neuro-sim/website/3.0/Category/Category.Box50_S.js Documents/neuro-sim/website/3.0/Category/Category.Box51_S.js Documents/neuro-sim/website/3.0/Category/Category.Box52_S.js Documents/neuro-sim/website/3.0/Category/Category.Box53_S.js Documents/neuro-sim/website/3.0/Category/Category.Box54_S.js Documents/neuro-sim/website/3.0/Category/Category.Box55_S.js Documents/neuro-sim/website/3.0/Category/Category.Box56_S.js Documents/neuro-sim/website/3.0/Category/Category.Box57_S.js Documents/neuro-sim/website/3.0/Category/Category.Box58_S.js Documents/neuro-sim/website/3.0/Category/Category.Box59_S.js Documents/neuro-sim/website/3.0/Category/Category.Box5_S.js Documents/neuro-sim/website/3.0/Category/Category.Box60_S.js Documents/neuro-sim/website/3.0/Category/Category.Box6_S.js Documents/neuro-sim/website/3.0/Category/Category.Box7_S.js Documents/neuro-sim/website/3.0/Category/Category.Box8_S.js Documents/neuro-sim/website/3.0/Category/Category.Box9_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle0_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle10_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle11_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle12_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle13_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle14_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle15_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle16_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle17_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle18_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle19_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle1_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle20_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle21_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle22_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle23_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle24_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle25_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle26_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle27_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle28_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle29_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle2_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle30_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle31_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle32_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle33_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle34_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle35_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle36_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle37_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle38_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle39_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle3_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle40_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle41_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle42_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle43_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle44_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle45_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle46_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle47_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle48_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle49_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle4_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle50_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle51_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle52_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle53_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle54_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle55_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle56_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle57_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle58_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle59_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle5_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle60_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle6_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle7_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle8_S.js Documents/neuro-sim/website/3.0/Category/Category.Circle9_S.js Documents/neuro-sim/website/3.0/Category/Category.Clone.Box_S.js Documents/neuro-sim/website/3.0/Category/Category.Clone.Circle_S.js Documents/neuro-sim/website/3.0/Category/Category.Label0_T.js Documents/neuro-sim/website/3.0/Category/Category.Label10_T.js Documents/neuro-sim/website/3.0/Category/Category.Label11_T.js Documents/neuro-sim/website/3.0/Category/Category.Label12_T.js Documents/neuro-sim/website/3.0/Category/Category.Label13_T.js Documents/neuro-sim/website/3.0/Category/Category.Label14_T.js Documents/neuro-sim/website/3.0/Category/Category.Label15_T.js Documents/neuro-sim/website/3.0/Category/Category.Label16_T.js Documents/neuro-sim/website/3.0/Category/Category.Label17_T.js Documents/neuro-sim/website/3.0/Category/Category.Label18_T.js Documents/neuro-sim/website/3.0/Category/Category.Label19_T.js Documents/neuro-sim/website/3.0/Category/Category.Label1_T.js Documents/neuro-sim/website/3.0/Category/Category.Label20_T.js Documents/neuro-sim/website/3.0/Category/Category.Label21_T.js Documents/neuro-sim/website/3.0/Category/Category.Label22_T.js Documents/neuro-sim/website/3.0/Category/Category.Label23_T.js Documents/neuro-sim/website/3.0/Category/Category.Label24_T.js Documents/neuro-sim/website/3.0/Category/Category.Label25_T.js Documents/neuro-sim/website/3.0/Category/Category.Label26_T.js Documents/neuro-sim/website/3.0/Category/Category.Label27_T.js Documents/neuro-sim/website/3.0/Category/Category.Label28_T.js Documents/neuro-sim/website/3.0/Category/Category.Label29_T.js Documents/neuro-sim/website/3.0/Category/Category.Label2_T.js Documents/neuro-sim/website/3.0/Category/Category.Label30_T.js Documents/neuro-sim/website/3.0/Category/Category.Label31_T.js Documents/neuro-sim/website/3.0/Category/Category.Label32_T.js Documents/neuro-sim/website/3.0/Category/Category.Label33_T.js Documents/neuro-sim/website/3.0/Category/Category.Label34_T.js Documents/neuro-sim/website/3.0/Category/Category.Label35_T.js Documents/neuro-sim/website/3.0/Category/Category.Label36_T.js Documents/neuro-sim/website/3.0/Category/Category.Label37_T.js Documents/neuro-sim/website/3.0/Category/Category.Label38_T.js Documents/neuro-sim/website/3.0/Category/Category.Label39_T.js Documents/neuro-sim/website/3.0/Category/Category.Label3_T.js Documents/neuro-sim/website/3.0/Category/Category.Label40_T.js Documents/neuro-sim/website/3.0/Category/Category.Label41_T.js Documents/neuro-sim/website/3.0/Category/Category.Label42_T.js Documents/neuro-sim/website/3.0/Category/Category.Label43_T.js Documents/neuro-sim/website/3.0/Category/Category.Label44_T.js Documents/neuro-sim/website/3.0/Category/Category.Label45_T.js Documents/neuro-sim/website/3.0/Category/Category.Label46_T.js Documents/neuro-sim/website/3.0/Category/Category.Label47_T.js Documents/neuro-sim/website/3.0/Category/Category.Label48_T.js Documents/neuro-sim/website/3.0/Category/Category.Label49_T.js Documents/neuro-sim/website/3.0/Category/Category.Label4_T.js Documents/neuro-sim/website/3.0/Category/Category.Label50_T.js Documents/neuro-sim/website/3.0/Category/Category.Label51_T.js Documents/neuro-sim/website/3.0/Category/Category.Label52_T.js Documents/neuro-sim/website/3.0/Category/Category.Label53_T.js Documents/neuro-sim/website/3.0/Category/Category.Label54_T.js Documents/neuro-sim/website/3.0/Category/Category.Label55_T.js Documents/neuro-sim/website/3.0/Category/Category.Label56_T.js Documents/neuro-sim/website/3.0/Category/Category.Label57_T.js Documents/neuro-sim/website/3.0/Category/Category.Label58_T.js Documents/neuro-sim/website/3.0/Category/Category.Label59_T.js Documents/neuro-sim/website/3.0/Category/Category.Label5_T.js Documents/neuro-sim/website/3.0/Category/Category.Label60_T.js Documents/neuro-sim/website/3.0/Category/Category.Label6_T.js Documents/neuro-sim/website/3.0/Category/Category.Label7_T.js Documents/neuro-sim/website/3.0/Category/Category.Label8_T.js Documents/neuro-sim/website/3.0/Category/Category.Label9_T.js Documents/neuro-sim/website/3.0/Category/CategoryLabel_T.js Documents/neuro-sim/website/3.0/Category/Category_V.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/Ship.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/game/SpaceRock.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/examples/modernizr/modernizr-1.7.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/lib/easel.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Bitmap.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/BitmapSequence.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Container.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/DisplayObject.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Graphics.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Shadow.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Shape.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/SpriteSheet.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Stage.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/display/Text.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/events/MouseEvent.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/BoxBlurFilter.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/ColorFilter.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/ColorMatrixFilter.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/filters/Filter.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Matrix2D.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Point.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/geom/Rectangle.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/SpriteSheetUtils.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/Ticker.js Documents/neuro-sim/website/3.0/EaselJS_v0_3_2/src/easeljs/utils/UID.js Documents/neuro-sim/website/3.0/History/History.Bg_S.js Documents/neuro-sim/website/3.0/History/History.Clone.Circle_S.js Documents/neuro-sim/website/3.0/History/HistoryNode.js Documents/neuro-sim/website/3.0/History/History_V.js Documents/neuro-sim/website/3.0/Login/LogIn.Bg_S.js Documents/neuro-sim/website/3.0/Login/LogIn.Button_C.js Documents/neuro-sim/website/3.0/Login/LogIn.Button_S.js Documents/neuro-sim/website/3.0/Login/LogIn.Clone.Border_S.js Documents/neuro-sim/website/3.0/Login/LogIn.Clone.Entry_D.js Documents/neuro-sim/website/3.0/Login/LogIn.MiniButtonA_S.js Documents/neuro-sim/website/3.0/Login/LogIn.MiniButtonB_S.js Documents/neuro-sim/website/3.0/Login/LogIn.Password.Border_S.js Documents/neuro-sim/website/3.0/Login/LogIn.Password.Entry_D.js Documents/neuro-sim/website/3.0/Login/LogIn.RetypePassword.Border_S.js Documents/neuro-sim/website/3.0/Login/LogIn.RetypePassword.Entry_D.js Documents/neuro-sim/website/3.0/Login/LogIn.UserName.Border_S.js Documents/neuro-sim/website/3.0/Login/LogIn.UserName.Entry_D.js Documents/neuro-sim/website/3.0/Login/LogIn_V.js Documents/neuro-sim/website/3.0/Login/log_in_view.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton1_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton1_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton2_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton2_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton3_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton3_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton4_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton4_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton5_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton5_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton6_CT.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.ArcButton6_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Bg_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Circle_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Label_T.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.TriangleAnim_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Triangle_C.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu.Triangle_S.js Documents/neuro-sim/website/3.0/MainMenu/MainMenu_V.js Documents/neuro-sim/website/3.0/Menu/BLMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem1_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem2_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem3_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem4_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem5_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem6_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem7_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem8_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_B.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_S.js Documents/neuro-sim/website/3.0/Menu/BLMenu.MenuItem9_T.js Documents/neuro-sim/website/3.0/Menu/BLMenu_V.js Documents/neuro-sim/website/3.0/Menu/BMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/BMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/BMenu_V.js Documents/neuro-sim/website/3.0/Menu/BRMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem1_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem2_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem3_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem4_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem5_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem6_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem7_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem8_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_B.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_S.js Documents/neuro-sim/website/3.0/Menu/BRMenu.MenuItem9_T.js Documents/neuro-sim/website/3.0/Menu/BRMenu_V.js Documents/neuro-sim/website/3.0/Menu/Menu.Clone.MenuItem_B.js Documents/neuro-sim/website/3.0/Menu/Menu.Clone.MenuItem_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem1_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem2_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem3_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem4_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem5_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem6_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem7_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem8_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_B.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_S.js Documents/neuro-sim/website/3.0/Menu/TLMenu.MenuItem9_T.js Documents/neuro-sim/website/3.0/Menu/TLMenu_V.js Documents/neuro-sim/website/3.0/Menu/TMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/TMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/TMenu_V.js Documents/neuro-sim/website/3.0/Menu/TRMenu.Bg_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.Label_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem1_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem2_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem3_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem4_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem5_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem6_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem7_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem8_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_B.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_S.js Documents/neuro-sim/website/3.0/Menu/TRMenu.MenuItem9_T.js Documents/neuro-sim/website/3.0/Menu/TRMenu_V.js Documents/neuro-sim/website/3.0/Portal/Portal.Bg_S.js Documents/neuro-sim/website/3.0/Portal/Portal.Clone.Box_S.js Documents/neuro-sim/website/3.0/Portal/Portal_V.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_B.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_S.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button1_T.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_B.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_S.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button2_T.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_B.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_S.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu.Button3_T.js Documents/neuro-sim/website/3.0/RClickMenu/RClickMenu_V.js Documents/neuro-sim/website/3.0/Side/Clone.Sparkles_B.js Documents/neuro-sim/website/3.0/Side/LSide_S.js Documents/neuro-sim/website/3.0/Side/LSide_V.js Documents/neuro-sim/website/3.0/Side/RSide_S.js Documents/neuro-sim/website/3.0/Side/RSide_V.js Documents/neuro-sim/website/3.0/Stage/Stage.js Documents/neuro-sim/website/3.0/main/bounding_box.js Documents/neuro-sim/website/3.0/main/easel.js Documents/neuro-sim/website/3.0/main/global_variables.js Documents/neuro-sim/website/3.0/main/initializations.js Documents/neuro-sim/website/3.0/main/keyboard.js Documents/neuro-sim/website/3.0/main/mouse.js Documents/neuro-sim/website/3.0/main/text.js Documents/neuro-sim/gplot/total_grid_pkg.py Documents/pa06r-thesis/Thesis/Appendix_Hippocampus.tex Documents/pa06r-thesis/Thesis/Appendix_Integrated_Neural_Network_Development_Environment.tex Documents/pa06r-thesis/Thesis/Appendix_Neural_Network_Simulator.tex Documents/pa06r-thesis/Thesis/Appendix_Synaptic_Plasticity.tex Documents/pa06r-thesis/Thesis/Biological_neurons_and_synaptic_plasticity.tex Documents/pa06r-thesis/Thesis/Conclusions.tex Documents/pa06r-thesis/Thesis/Discussion.tex Documents/pa06r-thesis/Thesis/Future_Work.tex Documents/pa06r-thesis/Thesis/Hippocampal_Model.tex Documents/pa06r-thesis/Thesis/Hippocampal_Model_Implementation.tex Documents/pa06r-thesis/Thesis/Hippocampus.tex Documents/pa06r-thesis/Thesis/Integrated_Neural_Network_Development_Environment.tex Documents/pa06r-thesis/Thesis/Introduction.tex Documents/pa06r-thesis/Thesis/Results.tex Documents/pa06r-thesis/Thesis/Synaptic_Plasticity.tex Documents/pa06r-thesis/Thesis/Taranaki_And_Spinnaker.tex Documents/pa06r-thesis/Thesis/Thesis.tex Documents/pa06r-thesis/Thesis/figure_template.tex Documents/pa06r-thesis/Thesis/grfguide.tex Documents/pa06r-thesis/Thesis/test.tex Documents/pa06r-thesis/Thesis/test2.tex Documents/pa06r-thesis/Thesis/test3.tex Documents/pa06r-thesis/Thesis/test_dot-dot2tex-fig1.tex Documents/pa06r-thesis/Thesis/test_dot.tex
edit Documents/pa06r-thesis/Thesis/Thesis.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
2argu
edit Documents/pa06r-thesis/Thesis/Thesis.tex
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
map <buffer> <silent> \lt :LatexTOC
map <buffer> \lv :LatexView
map <buffer> \le :LatexErrors
map <buffer> \lk :LatexmkStop
map <buffer> \lG :LatexmkStatus!
map <buffer> \lg :LatexmkStatus
map <buffer> \lC :LatexmkClean!
map <buffer> \lc :LatexmkClean
map <buffer> \lL :Latexmk!
map <buffer> \ll :Latexmk
omap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
omap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys==end,=item,),],},o,0\\,},],=^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 391 - ((40 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
391
normal! 09l
lcd ~/Documents/pa06r-thesis/Thesis
tabedit ~/Documents/pa06r-thesis/Thesis/Results.tex
TName "Results"
lcd /home/peyman/Documents/pa06r-thesis/Thesis
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 174)
exe '2resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
exe '3resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 3resize ' . ((&columns * 86 + 87) / 174)
exe '4resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 86 + 87) / 174)
argglobal
edit ~/Documents/pa06r-thesis/Thesis/Results.tex
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
map <buffer> <silent> \lt :LatexTOC
map <buffer> \lv :LatexView
map <buffer> \le :LatexErrors
map <buffer> \lk :LatexmkStop
map <buffer> \lG :LatexmkStatus!
map <buffer> \lg :LatexmkStatus
map <buffer> \lC :LatexmkClean!
map <buffer> \lc :LatexmkClean
map <buffer> \lL :Latexmk!
map <buffer> \ll :Latexmk
omap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
omap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys==end,=item,),],},o,0\\,},],=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 13 - ((6 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/Documents/pa06r-thesis/Thesis
wincmd w
argglobal
edit ~/Documents/pa06r-thesis/Thesis/Results.tex
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
map <buffer> <silent> \lt :LatexTOC
map <buffer> \lv :LatexView
map <buffer> \le :LatexErrors
map <buffer> \lk :LatexmkStop
map <buffer> \lG :LatexmkStatus!
map <buffer> \lg :LatexmkStatus
map <buffer> \lC :LatexmkClean!
map <buffer> \lc :LatexmkClean
map <buffer> \lL :Latexmk!
map <buffer> \ll :Latexmk
omap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
omap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys==end,=item,),],},o,0\\,},],=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 233 - ((5 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
233
normal! 0511l
lcd ~/
wincmd w
argglobal
edit ~/Documents/pa06r-thesis/Thesis/Results.tex
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
map <buffer> <silent> \lt :LatexTOC
map <buffer> \lv :LatexView
map <buffer> \le :LatexErrors
map <buffer> \lk :LatexmkStop
map <buffer> \lG :LatexmkStatus!
map <buffer> \lg :LatexmkStatus
map <buffer> \lC :LatexmkClean!
map <buffer> \lc :LatexmkClean
map <buffer> \lL :Latexmk!
map <buffer> \ll :Latexmk
omap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
omap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys==end,=item,),],},o,0\\,},],=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 384 - ((5 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
384
normal! 0
lcd ~/
wincmd w
argglobal
edit ~/Documents/pa06r-thesis/Thesis/Results.tex
let s:cpo_save=&cpo
set cpo&vim
xmap <buffer> % <Plug>LatexBox_JumpToMatch
nmap <buffer> % <Plug>LatexBox_JumpToMatch
map <buffer> <silent> \lt :LatexTOC
map <buffer> \lv :LatexView
map <buffer> \le :LatexErrors
map <buffer> \lk :LatexmkStop
map <buffer> \lG :LatexmkStatus!
map <buffer> \lg :LatexmkStatus
map <buffer> \lC :LatexmkClean!
map <buffer> \lc :LatexmkClean
map <buffer> \lL :Latexmk!
map <buffer> \ll :Latexmk
omap <buffer> a$ :normal va$
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> ae :normal vae
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> i$ :normal vi$
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
omap <buffer> ie :normal vie
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys==end,=item,),],},o,0\\,},],=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=LatexBox_Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=
setlocal suffixesadd=.tex
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 686 - ((10 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
686
normal! 0
lcd ~/
wincmd w
exe '1resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 1resize ' . ((&columns * 87 + 87) / 174)
exe '2resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
exe '3resize ' . ((&lines * 24 + 26) / 52)
exe 'vert 3resize ' . ((&columns * 86 + 87) / 174)
exe '4resize ' . ((&lines * 23 + 26) / 52)
exe 'vert 4resize ' . ((&columns * 86 + 87) / 174)
tabedit ~/Documents/neuro-sim/gplot/total_grid_pkg.py
TName "GPlot"
lcd /home/peyman/Documents/neuro-sim/gplot
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/gplot/total_grid_pkg.py
noremap <buffer> <silent>  :PyflakesUpdate
noremap <buffer> <silent> dw dw:PyflakesUpdate
noremap <buffer> <silent> dd dd:PyflakesUpdate
noremap <buffer> <silent> u u:PyflakesUpdate
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.py
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 24 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 043l
lcd ~/Documents/neuro-sim/gplot
tabedit ~/Documents/neuro-sim/website/3.0/index.html
TName "Website"
lcd /home/peyman/Documents/neuro-sim/website/3.0
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/website/3.0/index.html
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'html'
setlocal filetype=html
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndentGet(v:lnum)
setlocal indentkeys=o,O,*<Return>,<>>,{,}
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'html'
setlocal syntax=html
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/Documents/neuro-sim/website/3.0
tabedit ~/Documents/neuro-sim/website/3.0/main/easel.js
TName "Main"
lcd /home/peyman/Documents/neuro-sim/website/3.0
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/website/3.0/main/easel.js
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
30
normal zo
30
normal zo
let s:l = 105 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
105
normal! 03l
lcd ~/Documents/neuro-sim/website/3.0
tabedit ~/Documents/neuro-sim/website/3.0/main/initializations.js
TName "JS"
lcd /home/peyman/Documents/neuro-sim/website/3.0
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/website/3.0/main/initializations.js
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
59
normal zo
let s:l = 70 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
70
normal! 06l
lcd ~/Documents/neuro-sim/website/3.0
tabedit ~/Documents/neuro-sim/website/3.0/html.load.php
TName "PHP"
lcd /home/peyman/Documents/neuro-sim/website/3.0
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/website/3.0/html.load.php
onoremap <buffer> <silent> [[ ?\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)?:nohls
nnoremap <buffer> <silent> [[ ?\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)?:nohls
onoremap <buffer> <silent> ]] /\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)/:nohls
nnoremap <buffer> <silent> ]] /\(.*\%#\)\@!\_^\s*\zs\(\(abstract\s\+\|final\s\+\|private\s\+\|protected\s\+\|public\s\+\|static\s\+\)*function\|\(abstract\s\+\|final\s\+\)*class\|interface\)/:nohls
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,:#
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'php'
setlocal filetype=php
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=lqrowcb
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\(require\\|include\\)\\(_once\\)\\?
setlocal includeexpr=
setlocal indentexpr=GetPhpIndent()
setlocal indentkeys=0{,0},0),:,!^F,o,O,e,*<Return>,=?>,=<?,=*/
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=phpcomplete#CompletePHP
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'php'
setlocal syntax=php
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 25 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 02l
lcd ~/Documents/neuro-sim/website/3.0
tabedit ~/Documents/neuro-sim/website/3.0/database/addFromConsole.sh
TName "SH"
lcd /home/peyman/Documents/neuro-sim/website/3.0
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit ~/Documents/neuro-sim/website/3.0/database/addFromConsole.sh
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Documents/neuro-sim/website/3.0
tabedit /etc/apache2/sites-available/www.player1.portal.com
TName "Apache"
lcd /etc/apache2
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /etc/apache2/sites-available/www.player1.portal.com
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
set breakindent
setlocal breakindent
setlocal breakindentmin=20
setlocal breakindentshift=0
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'apache'
setlocal filetype=apache
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=l
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=$,@,48-57,_
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=3
setlocal noshortname
setlocal smartindent
setlocal softtabstop=3
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'apache'
setlocal syntax=apache
endif
setlocal tabstop=3
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 68 - ((23 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
68
normal! 0
lcd /etc/apache2
tabnext 7
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

tabfirst
TName "Thesis"
lcd /home/peyman/Documents/pa06r-thesis/Thesis
