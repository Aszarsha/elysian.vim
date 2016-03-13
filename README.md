# elysian
elysian is a 256 terminal only colorscheme inspired by [apprentice](https://github.com/romainl/Apprentice)

#![code](http://i.imgur.com/pRHWajJ.png)

##env (included, makes pathes much shorter)
Env is a vim plugin that provides the function `env#Path(path, full)` that returns the path with environment variables replaced with their names. It takes a full path always!

It will always use the variable that produces the smallest path, or just return path if it cannot be shortened (if replacing environment variables causes the path to become larger or there are no matches). If full is false, it also takes into account the relative path.

### Usage
Just call the function in your statusline. Refer to either your statusline plugin's docs or vim's docs on how to do that.

### Settings
#### Blacklisted
Set `g:env_blacklisted` to blacklisted environment variables that you do not want replaced.
Default is

```vim
let g:env_blacklisted = ['PWD', 'OLDPWD']
```

#### Mappings
You can map environment variables to special names/symbols. For example (the default) `$HOME` maps to `~`

```vim
let g:env_mappings = {'HOME': '~'}
```

You might be asking, why do I need this if I can just do `expand('%:p:~')`? Well its because if you just send in the filepath with `~`, the environment variables won't match (yes I know I can just expand it, but this is fricking cool).


TODO:
-----
- [ ] Vim docs
