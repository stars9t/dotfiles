# Cheetsheet

> This is a little cheat sheet if you suddenly decide to use vim or tmux

## Vim

### Moving

hjkl - move as arrow

e - move cursor to end of word

w - move cursor to start of word (or new symbol)

W - move cursor to start of only word

$ - jump to end of string

b - return to start of word (B if word has a punctuation)

L - jump to the end of screen

} / {  - move to the next/previous paragraph

H - move cursor top the screen

M - move cursor bottom the screen

M - move cursor middle the screen

o - move one line down and switch to input mode

O - move one line up and switch to input mode

a - jump to the next character and start input mode

A - jump to end of line and start input mode

i - start input mode

I - jump to start of file and start input mode

### Writing

r - replace character under the cursor

dw - delete the word

u - CTRL-Z

Ctrl + r - repeat

.  - repeat the last command

yy - copy the current line

yw - copy word

y% - copy from current cursor position to end of line

D - delete from current cursor position to end of line

d0 - delete from current cursor position to start of line

## Tmux

### Creating and deleting

tmux - start new session

tmux new -s "name" - start new session with name

tmux a, attach, at - attach to tmux

tmux a -t "name" - attach to named session

tmux ls - list of sessions

tmux kill-session -t "name" - kill the session

### Shortcuts

All shortcuts are executed after <ctrl> + b

s - list sessions

$ - name session

c - create window

w - list windows 

#### Window

n - next window

p - previous window

f - find window

, - name widnow

& = kill window

#### Panes

% - vertical split

" - horizontal split

o - swap panes

q - show pane numbers

x - kill pane

\+ - kill break pane into window

\- - restore pane from window

space - toggle between layouts

{ - move the current table left

} - move the current talbe right
