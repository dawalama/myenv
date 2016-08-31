" vim: et ts=2 sts=2 sw=2

if !exists('*ObsessionStatus')
  finish
endif

let s:spc = g:airline_symbols.space

if !exists('g:airline#extensions#obsession#indicator_text')
  let g:airline#extensions#obsession#indicator_text = '$'
endif

function! airline#extensions#obsession#init(ext)
  call airline#parts#define_function('obsession', 'airline#extensions#obsession#get_status')
endfunction

function! airline#extensions#obsession#get_status()
  return ObsessionStatus((g:airline#extensions#obsession#indicator_text . s:spc), '')
endfunction

