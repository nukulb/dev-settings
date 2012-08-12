let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/github-reviews/framework
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 lib/controllerWebView.js
badd +36 lib/webview.js
badd +0 NERD_tree_1
silent! argdel *
edit NERD_tree_1
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
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
exe '1resize ' . ((&lines * 1 + 30) / 61)
exe '2resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 31 + 119) / 238)
exe '3resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 1 + 119) / 238)
exe '4resize ' . ((&lines * 19 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 204 + 119) / 238)
exe '5resize ' . ((&lines * 37 + 30) / 61)
exe 'vert 5resize ' . ((&columns * 204 + 119) / 238)
argglobal
enew
file -MiniBufExplorer-
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
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
enew
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
edit lib/controllerWebView.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit lib/controllerWebView.js
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
silent! normal! zE
let s:l = 26 - ((16 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 034l
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 1 + 30) / 61)
exe '2resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 31 + 119) / 238)
exe '3resize ' . ((&lines * 57 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 1 + 119) / 238)
exe '4resize ' . ((&lines * 19 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 204 + 119) / 238)
exe '5resize ' . ((&lines * 37 + 30) / 61)
exe 'vert 5resize ' . ((&columns * 204 + 119) / 238)
tabnext 1
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
