let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}}

"normal
let s:p.normal.left = [ ['', '', 8, 12, 'bold' ], [ '', '', 7, 8 ] ]
let s:p.normal.middle = [ ['', '', 7, 235] ]
let s:p.normal.right = [ [ '', '', 8, 12 ], [ '', '', 7, 8 ], [ '', '', 7, 235 ] ]

"insert
let s:p.insert.left = [ ['', '', 8, 6, 'bold' ], [ '', '', 7, 8 ] ]
let s:p.insert.middle = [ ['', '', 7, 235] ]
let s:p.insert.right = [ [ '', '', 8, 6 ], [ '', '', 7, 8 ], [ '', '', 7, 235 ] ]

"replace
let s:p.replace.left = [ ['', '', 8, 5, 'bold' ], [ '', '', 7, 8 ] ]
let s:p.replace.middle = [ ['', '', 7, 235] ]
let s:p.replace.right = [ [ '', '', 8, 5 ], [ '', '', 7, 8 ], [ '', '', 7, 235 ] ]

"visual
let s:p.visual.left = [ ['', '', 8, 3, 'bold' ], [ '', '', 7, 8 ] ]
let s:p.visual.middle = [ ['', '', 7, 235] ]
let s:p.visual.right = [ [ '', '', 8, 3 ], [ '', '', 7, 8 ], [ '', '', 7, 235 ] ]

"inactive
let s:p.inactive.left = [ [ '', '', 249, 8 ], [ '', '', 249, 8 ], [ '', '', 249, 8 ] ]
let s:p.inactive.middle = [ [ '', '', 7, 235 ] ]
let s:p.inactive.right = [ [ '', '', 249, 8 ], [ '', '', 249, 8 ], [ '', '', 249, 8 ] ]

let g:lightline#colorscheme#elysian#palette = s:p
