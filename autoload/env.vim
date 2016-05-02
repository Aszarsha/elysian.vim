" Initializes s:env with the environment variables to replace
function! s:init() abort
  if !exists("g:env_blacklisted")
    let g:env_blacklisted = ['PWD', 'OLDPWD']
  endif
  if !exists("g:env_mappings")
    let g:env_mappings = {'HOME': '~'}
  endif
  let ptabline = &tabline
  redir => rawenv
  silent! execute "normal!:ec$\<c-a>'\<c-b>\<right>\<right>\<del>'\<cr>"
  redir END
  let &tabline = ptabline
  let l = split(rawenv)
  let s:env = {}
  for k in range(len(l))
    let v = eval('$'.l[k])
    if index(g:env_blacklisted, l[k]) != -1 || v[0] != '/'
      continue
    endif
    let s:env[l[k]] = v
  endfor
endfunction
call s:init()

" Substitute the env variable value in path with its key or mapping
function! s:substitute_env(key, value, path) abort
  if has_key(g:env_mappings, a:key)
    return substitute(a:path, '^' . a:value, g:env_mappings[a:key], "")
  endif
  return substitute(a:path, '^' . a:value, '$' . a:key, "")
endfunction

" Returns the path with environment variables replaced
" It uses the environment variable that produces the smallest path
" or just return path if it cannot be shortened (if environment variables
" cause the path to become larger or there are no matches)
function! env#Path(path, full) abort
  "TODO bug with this
  " echo s:env
  if a:path =~# "term:"
    return env#Path(substitute(a:path, 'term:\/\/.*:\(.*\)', '\1', ''), 1)
  endif
  let path = a:full ? a:path : fnamemodify(a:path, ':.')
  if path != a:path
    let path = './' . path
  endif
  let envname = ""
  for [k, v] in items(s:env)
    if a:path =~? v
      if empty(envname)
        let tmpname = s:substitute_env(k, v, a:path)
        if len(tmpname) < len(path)
          let envname = tmpname
        endif
      else
        let tmpname = s:substitute_env(k, v, a:path)
        let ls1 = len(envname)
        let ls2 = len(tmpname)
        if ls1 > ls2
          let envname = tmpname
        endif
      endif
    endif
  endfor
  if empty(envname)
    return path
  endif
  return envname
endfunction
