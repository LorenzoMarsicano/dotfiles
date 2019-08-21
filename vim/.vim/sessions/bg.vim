let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .zerynth2/dist/r2.3.0/libs/official/toi/fourzerobox/fourzerobox.py
badd +1 .zerynth2/dist/r2.3.0/libs/official/toi/fourzeromanager/fourzeromanager.py
badd +2298 Code/Zerynth/libs/quectel-bg96/csrc/bg96.c
badd +467 Code/Zerynth/libs/quectel-bg96/csrc/bg96_ifc.c
badd +246 Code/Zerynth/libs/quectel-bg96/bg96.py
badd +219 Code/Zerynth/zerynth-stdlib/csrc/zsockets/zsockets.c
badd +94 .zerynth2/dist/r2.3.0/libs/official/aws/iot/iot.py
badd +717 .zerynth2/dist/r2.3.0/libs/official/zerynth/mqtt/mqtt.py
argglobal
silent! argdel *
edit Code/Zerynth/zerynth-stdlib/csrc/zsockets/zsockets.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 229 - ((38 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
229
normal! 031|
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
