let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Code/Zerynth/vm/vm
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +57 common/vos/esp32-rtos/esp-idf-3.2/components/mbedtls/mbedtls/library/ssl_tls.c
badd +1840 common/vhal/ARMCMx/nrf52840/sdk/external/mbedtls/library/ssl_cli.c
badd +11 common/vhal/ARMCMx/atmelsamc21n/vhal_i2c.c
argglobal
silent! argdel *
$argadd common/vos/esp32-rtos/esp-idf-3.2/components/mbedtls/mbedtls/
edit common/vos/esp32-rtos/esp-idf-3.2/components/mbedtls/mbedtls/library/ssl_tls.c
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 207 + 119) / 239)
argglobal
enew
file NERD_tree_4
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 65 - ((36 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
65
normal! 028|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 207 + 119) / 239)
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
