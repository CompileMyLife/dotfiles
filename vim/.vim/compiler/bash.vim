" avoid loading twice

if exists("current_compiler")
    finish
endif

let current_compiler = "bash"

setlocal makeprg=bash
setlocal errorformat=%f:\ line\ %l;\ %m
