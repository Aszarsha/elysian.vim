if exists('g:loaded_elysian_tabline') || !empty($PUSSY)
  finish
endif
let g:loaded_elysian_tabline = 1
function! elysian_tabline#Update()
  let s = '%#TabLabel# tabs %#TabLabelNum#'
  let t = tabpagenr()
  for i in range(1, tabpagenr('$'))
    let wn = tabpagewinnr(i)
    let s .= '%' . i . 'T'
    let s .= '%#TabBGNum#'
    let s .= ( i == t ? '%#TabNumSel#' : '%#TabNum#')
    let s .= ' '
    let s .= i
    let s .= ':'
    let s .= wn
    let s .= ' '
    let s .= ( i == t ? '%#TabNumSelName#' : '%#TabNumName#')
    let s .= ''
    let s .= ( i == t ? '%#TabNameSel#' : '%#TabName#')
    let buflist = tabpagebuflist(i)
    let bufnr = buflist[wn - 1]
    let file = bufname(bufnr)
    if file == ''
      let file = '[No Name]'
    elseif file =~# "term.*fzf"
      let file = 'fzf'
    elseif file =~# "term.*tchat"
      let file = 'chat'
    elseif file =~# "term.*go run"
      let file = 'go-run'
    elseif file ==# "__Tagbar__"
      let file = 'tagbar'
    elseif exists('*env#Path')
      let file = fnamemodify(substitute(env#Path(file, 1), "/$", '', ''), ':t')
    endif
    let s .= ' '
    let s .= file
    let s .= ' '
    let s .= ( i == t ? '%#TabNameSelBG#' : '%#TabNameBG#')
    let s .= ''
  endfor
  let s .= '%T%#TabLineFill#%= %#TabBGClose#%#TabClose# X '
  return s
endfunction
set tabline=%!elysian_tabline#Update()
