i                                       -       Insert Mode
Shift + a                               -       Insert Mode - Append
o                                       -       Insert Mode - New Line After
Shift + Up/Down                         -       Scrolling
:wq                                     -       Write and Quit
:e [file]                               -       Edit Another File
gg                                      -       Goto First Line
G                                       -       Goto Last Line

u                                       -       Undo
Ctrl + r                                -       Redo
.                                       -       Repeat Previous Command

/[word]                                 -       Search
n                                       -       Search - Next
Shift + n                               -       Search - Previous
/[word], [edit], n, .                   -       Search, modify, next search, repeat for next
:%s/old/new/g                           -       Replace All
:[startline],[endline]s/old/new/g       -       Replace Between Lines
:%s/^/[word]/g                          -       Append Word to Start of Every Line
:%s/$/[word]/g                          -       Append Word to End of Every Line

Ctrl + w and v                          -       Splitting Window Vertically
Ctrl + w and Shift + s                  -       Splitting Window Horizontally

v                                       -       Visual Select
Shift + v                               -       Visual Select - Line
Ctrl + v                                -       Visual Select - Block
Shift + v and [number]>                 -       Tab a Line Multiple Times

d                                       -       Delete/Cut
dd                                      -       Delete Current Line
d[number]d                              -       Delete Multiple Lines
y                                       -       Yank/Copy
p                                       -       Paste

gg=G                                    -       Fix All Indentations

vi"                                     -       Select everything within double quotes
va"                                     -       Select everything within and including double quotes
vi"d                                    -       Delete everything within double quotes
vi"s                                    -       Delete everything within double quotes then go into insert mode
