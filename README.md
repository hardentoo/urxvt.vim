# Intro

It's vim plugin for integration with urxvt through
https://github.com/kovetskiy/urxvt-fifo

# Installation

For plug.vim users:

Plug 'kovetskiy/urxvt.vim'

# Usage

for example autochange directory in terminal

```vim
augroup urxvt
    au!
    au BufRead,BufNewFile * UrxvtChangeDir
augroup end
```

exec `go build` in the terminal

```
nmap <Leader>b call urxvt#put('go build')
```
