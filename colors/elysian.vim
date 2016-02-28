hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "elysian"

set background=dark

"TODO replace white 7 with a 256 color maybe

hi Normal            ctermbg=0    ctermfg=250   cterm=NONE
hi LineNr            ctermbg=234  ctermfg=242   cterm=NONE
hi FoldColumn        ctermbg=234  ctermfg=242   cterm=NONE
hi Folded            ctermbg=233  ctermfg=242   cterm=NONE
hi MatchParen        ctermbg=232  ctermfg=6     cterm=NONE
hi SignColumn        ctermbg=234  ctermfg=242   cterm=NONE
hi Comment           ctermbg=NONE ctermfg=240   cterm=NONE
hi Conceal           ctermbg=NONE ctermfg=250   cterm=NONE
hi Constant          ctermbg=NONE ctermfg=210   cterm=NONE
hi Error             ctermbg=NONE ctermfg=131   cterm=REVERSE
hi Identifier        ctermbg=NONE ctermfg=67    cterm=NONE
hi Ignore            ctermbg=NONE ctermfg=NONE  cterm=NONE
hi PreProc           ctermbg=NONE ctermfg=66    cterm=NONE
hi Special           ctermbg=NONE ctermfg=65    cterm=NONE
hi Statement         ctermbg=NONE ctermfg=110   cterm=NONE
hi String            ctermbg=NONE ctermfg=108   cterm=NONE
hi Todo              ctermbg=NONE ctermfg=NONE  cterm=REVERSE
hi Type              ctermbg=NONE ctermfg=103   cterm=NONE
hi Underlined        ctermbg=NONE ctermfg=66    cterm=UNDERLINE
hi NonText           ctermbg=NONE ctermfg=240   cterm=NONE
hi Pmenu             ctermbg=238  ctermfg=250   cterm=NONE
hi PmenuSbar         ctermbg=240  ctermfg=NONE  cterm=NONE
hi PmenuSel          ctermbg=66   ctermfg=235   cterm=NONE
hi PmenuThumb        ctermbg=66   ctermfg=66    cterm=NONE
hi ErrorMsg          ctermbg=NONE ctermfg=73    cterm=NONE
hi ModeMsg           ctermbg=NONE ctermfg=73    cterm=NONE
hi MoreMsg           ctermbg=NONE ctermfg=66    cterm=NONE
hi Question          ctermbg=NONE ctermfg=108   cterm=NONE
hi WarningMsg        ctermbg=NONE ctermfg=131   cterm=NONE
hi TabLine           ctermbg=238  ctermfg=101   cterm=NONE
hi TabLineFill       ctermbg=238  ctermfg=238   cterm=NONE
hi TabLineSel        ctermbg=101  ctermfg=235   cterm=NONE
hi Cursor            ctermbg=0    ctermfg=NONE  cterm=NONE
hi CursorColumn      ctermbg=236  ctermfg=NONE  cterm=NONE
hi CursorLine        ctermbg=234  ctermfg=NONE  cterm=NONE
hi CursorLineNr      ctermbg=234  ctermfg=73    cterm=NONE
hi helpLeadBlank     ctermbg=NONE ctermfg=NONE  cterm=NONE
hi helpNormal        ctermbg=NONE ctermfg=NONE  cterm=NONE

"TODO needs work
hi StatusLine        ctermbg=bg   ctermfg=fg    cterm=NONE
hi StatusLineNC      ctermbg=bg   ctermfg=fg    cterm=NONE

hi Visual            ctermbg=235  ctermfg=110   cterm=REVERSE
hi VisualNOS         ctermbg=NONE ctermfg=NONE  cterm=UNDERLINE
hi VertSplit         ctermbg=0    ctermfg=238   cterm=NONE
hi WildMenu          ctermbg=253  ctermfg=0     cterm=NONE
hi Function          ctermbg=NONE ctermfg=182   cterm=NONE
hi SpecialKey        ctermbg=NONE ctermfg=240   cterm=NONE
hi Title             ctermbg=NONE ctermfg=231   cterm=NONE

"TODO needs work
hi DiffAdd           ctermbg=10   ctermfg=0     cterm=NONE
hi DiffChange        ctermbg=10   ctermfg=0     cterm=NONE
hi DiffDelete        ctermbg=5    ctermfg=0     cterm=NONE
hi DiffText          ctermbg=2    ctermfg=0     cterm=NONE
hi Search            ctermbg=4    ctermfg=0     cterm=NONE
hi IncSearch         ctermbg=1    ctermfg=0     cterm=NONE

hi Directory         ctermbg=NONE ctermfg=12    cterm=NONE
hi ColorColumn       ctermbg=235  ctermfg=NONE  cterm=NONE
hi SneakPluginTarget ctermbg=6    ctermfg=0     cterm=NONE
hi SneakStreakTarget ctermbg=6    ctermfg=0     cterm=NONE
hi SneakStreakMask   ctermbg=6    ctermfg=6     cterm=none
hi GitGutterChange   ctermbg=234  ctermfg=13    cterm=none
hi cssClassName      ctermbg=NONE ctermfg=6     cterm=NONE
hi cssClassNameDot   ctermbg=NONE ctermfg=6     cterm=NONE
hi cssBraces         ctermbg=NONE ctermfg=NONE  cterm=NONE
hi htmlLink          ctermbg=NONE ctermfg=NONE  cterm=NONE
hi htmlH1            ctermbg=NONE ctermfg=fg    cterm=NONE
hi StartifyHeader    ctermbg=NONE ctermfg=231   cterm=NONE
hi TODO              ctermbg=0    ctermfg=6     cterm=BOLD
hi StartifyPath      ctermbg=NONE ctermfg=7     cterm=NONE
hi SpellBad          ctermbg=NONE ctermfg=131   cterm=NONE
hi SpellCap          ctermbg=NONE ctermfg=73    cterm=NONE
hi SpellRare         ctermbg=NONE ctermfg=208   cterm=NONE
hi SpellLocal        ctermbg=NONE ctermfg=65    cterm=NONE
hi TermCursor        ctermbg=bg   ctermfg=fg
hi TermCursorNC      ctermbg=bg   ctermfg=fg

hi link Boolean                  Constant
hi link Character                Constant
hi link Conditional              Statement
hi link Debug                    Special
hi link Define                   PreProc
hi link Delimiter                Special
hi link Exception                Statement
hi link Float                    Number
hi link HelpCommand              Statement
hi link HelpExample              Statement
hi link Include                  PreProc
hi link Keyword                  Statement
hi link Label                    Statement
hi link Macro                    PreProc
hi link Number                   Constant
hi link Operator                 Statement
hi link PreCondit                PreProc
hi link Repeat                   Statement
hi link SpecialChar              Special
hi link SpecialComment           Special
hi link StorageClass             Type
hi link Structure                Type
hi link Tag                      Special
hi link Typedef                  Type
hi link htmlEndTag               htmlTagName
hi link htmlLink                 Function
hi link htmlSpecialTagName       htmlTagName
hi link htmlTag                  htmlTagName
hi link htmlBold                 Normal
hi link htmlItalic               Normal
hi link xmlTag                   Statement
hi link xmlTagName               Statement
hi link xmlEndTag                Statement
hi link markdownItalic           Preproc
hi link asciidocQuotedEmphasized Preproc
hi link diffBDiffer              WarningMsg
hi link diffCommon               WarningMsg
hi link diffDiffer               WarningMsg
hi link diffIdentical            WarningMsg
hi link diffIsA                  WarningMsg
hi link diffNoEOL                WarningMsg
hi link diffOnly                 WarningMsg
hi link diffRemoved              WarningMsg
hi link diffAdded                String
hi link GitGutterChangeDelete    GitGutterChange
hi link StartifyVar              StartifyFile
hi link StartifySlash            StartifyPath
hi link SneakPluginScope         Comment
hi link zshKSHFunction           Function
hi link vimFunction              Function
