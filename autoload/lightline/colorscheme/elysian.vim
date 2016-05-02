let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}}

"normal
let s:p.normal.left = [ ['#000000', '#000000', 8, 12, 'bold' ], [ '#000000', '#000000', 7, 8 ] ]
let s:p.normal.middle = [ ['#000000', '#000000', 7, 235] ]
let s:p.normal.right = [ [ '#000000', '#000000', 8, 12 ], [ '#000000', '#000000', 7, 8 ], [ '#000000', '#000000', 7, 235 ] ]

"insert
let s:p.insert.left = [ ['#000000', '#000000', 8, 6, 'bold' ], [ '#000000', '#000000', 7, 8 ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.insert.right = [ [ '#000000', '#000000', 8, 6 ], [ '#000000', '#000000', 7, 8 ], [ '#000000', '#000000', 7, 235 ] ]

"replace
let s:p.replace.left = [ ['#000000', '#000000', 8, 9, 'bold' ], [ '#000000', '#000000', 7, 8 ] ]
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = [ [ '#000000', '#000000', 8, 9 ], [ '#000000', '#000000', 7, 8 ], [ '#000000', '#000000', 7, 235 ] ]

"visual
let s:p.visual.left = [ ['#000000', '#000000', 8, 3, 'bold' ], [ '#000000', '#000000', 7, 8 ] ]
let s:p.visual.middle = s:p.normal.middle
let s:p.visual.right = [ [ '#000000', '#000000', 8, 3 ], [ '#000000', '#000000', 7, 8 ], [ '#000000', '#000000', 7, 235 ] ]

"inactive
let s:p.inactive.left = [ [ '#000000', '#000000', 249, 8 ], [ '#000000', '#000000', 249, 8 ], [ '#000000', '#000000', 249, 8 ] ]
let s:p.inactive.middle = s:p.normal.middle
let s:p.inactive.right = [ [ '#000000', '#000000', 249, 8 ], [ '#000000', '#000000', 249, 8 ], [ '#000000', '#000000', 249, 8 ] ]

let g:lightline#colorscheme#elysian#palette = lightline#colorscheme#fill(s:p)
