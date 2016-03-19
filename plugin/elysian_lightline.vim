if exists('g:loaded_elysian_lightline')
  finish
endif
let g:loaded_elysian_lightline = 1
let g:lightline = {
      \ 'colorscheme': 'elysian',
      \ 'enable': {
      \   'statusline': 1,
      \   'tabline': 0,
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cwd', ], [ 'filename' ] ],
      \   'right': [ [ 'lineinfo' ],
      \            [ 'filetype'], ['make']],
      \ },
      \ 'inactive': {
      \  'left': [ [ 'filename' ] ],
      \  'right': [ [ 'filetype' ] ],
      \ },
      \ 'component': {
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename',
      \   'make': 'LightLineMake',
      \   'cwd': 'LightLineCWD',
      \ },
      \ 'tabline': {
      \  'left': [[ 'tabs'] ],
      \  'right': [ [ 'close' ] ],
      \ },
      \ 'tab': {
      \  'active': [ 'filename', ],
      \  'inactive': [ 'filename', ],
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }

function! LightLineMake()
  let tags = gutentags#statusline('tags...')
  if !empty(tags)
    return tags
  elseif &filetype ==# "go"
    return go#jobcontrol#Statusline()
  else
    return neomake#statusline#LoclistStatus()
  endif
endfunction

function! s:oneLetterPath(path)
  return fnamemodify(substitute(a:path, '\/\(.\)[^\/]*', '\/\1', 'g'), ':h') . '/' . fnamemodify(a:path, ':t')
endfunction

function! LightLineCWD()
  let cwd = env#Path(getcwd(), 1)
  if len(cwd) > 35
    let cwd = s:oneLetterPath(cwd)
  endif
  return cwd
endfunction

function! LightLineModified()
  if &modified
    return "+"
  elseif &modifiable && &filetype !=# "dirvish"
    return "-"
  else
    return ""
  endif
endfunction

function! LightLineReadonly()
  if &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightLineFugitive()
  if exists("*fugitive#head") && &filetype !=# "tagbar" && &filetype !=# "help" && &filetype !=# "undotree" && &filetype !=# "diff"
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

function! LightLineFilename()
  if &filetype ==# "tagbar" || &filetype ==# "vim-plug" || &filetype ==# "startify" || &filetype ==# "qf" || &filetype ==# "undotree" || &filetype ==# "diff"
    return ''
  elseif &buftype ==# "nofile" && &filetype !=# "dirvish" && &filetype !=# "neoman"
    let file = 'scratch'
  elseif expand('%') =~# "fugitive:"
    let file = env#Path(substitute(expand('%'), 'fugitive:\/\/\zs\(\f\+\)\.git\/\/\w\+\/\(\f\+\)', '\1\2', ''), 0)
  elseif expand('%') =~# "go run"
    return 'gorun://' . env#Path(substitute(expand('%'), ".*go run '\\\(.*\\\)'", '\1', ''), 0)
  else
    let file = env#Path(expand('%:p'), 0)
    if len(file) > 35
      let file = s:oneLetterPath(file)
    endif
  endif
  let ro = LightLineReadonly()
  if !empty(ro)
    let file = ro . ' ' . file
  endif
  return file . ' ' . LightLineModified()
endfunction

"fix tagbar
let g:tagbar_status_func = 'TagbarStatusFunc'
function! TagbarStatusFunc(current, sort, fname, ...) abort
  if empty(a:fname)
    let name = '[No Name]'
    let type = ''
  else
    let name = a:fname
    let type = '['.join(a:1, " ").']'
  endif
  return "%{lightline#link()}%#LightLineRight_active_0#%( tagbar %)%#LightLineLeft_active_0_1#%#LightLineLeft_active_1#%(%)%#LightLineLeft_active_1_2#%#LightLineLeft_active_2#%( %{exists(\"*LightLineFilename\")?LightLineFilename():\"\"} %)%#LightLineLeft_active_2_3#%#LightLineMiddle_active#%=%#LightLineRight_active_2_3#%#LightLineRight_active_2#%(%)%#LightLineRight_active_1_2#%#LightLineRight_active_1#%(%)%#LightLineRight_active_0_1#%#LightLineRight_active_0#%( %3l:%-2v %)"
endfunction
